using System.Text;

namespace Content.Shared.Localization;

/// <summary>
/// zh-CN: some player-facing text lives in map YAML rather than prototypes, so Fluent's
/// <c>ent-</c> mechanism never sees it — warp point <c>location:</c>, surveillance camera
/// <c>id:</c> and <c>PaperComponent.content</c> are plain strings typed by whoever built the map.
/// This resolves such text through a lookup table and falls back to the original when there is no
/// entry, so untranslated maps keep working unchanged.
///
/// Deliberately self-contained: translations live in <c>Resources/Locale/zh-CN/_zhCN/</c> and
/// callers only add a single call, which keeps upstream merge conflicts down to one line per site.
///
/// Everything here sticks to primitives and the handful of String/StringBuilder members on the
/// sandbox whitelist. <c>System.Char</c> and <c>System.Security.Cryptography</c> are NOT
/// whitelisted, so character classification is written out as explicit range checks and the digest
/// is a hand-rolled FNV-1a rather than SHA-256.
/// </summary>
public static class MapStringLocalizer
{
    private const string Prefix = "map-string-";
    private const string ParagraphPrefix = "map-paper-";

    private const ulong FnvOffsetBasis = 14695981039346656037;
    private const ulong FnvPrime = 1099511628211;

    /// <summary>
    /// Returns the localized form of a map-authored string, or <paramref name="raw"/> unchanged
    /// when no translation exists. Deliberately uncached: this only runs while building a menu,
    /// never per frame, and caching would hide ftl hot reloads from translators.
    /// </summary>
    public static string Localize(string? raw)
    {
        if (string.IsNullOrWhiteSpace(raw))
            return raw ?? string.Empty;

        return Resolve(raw);
    }

    private static string Resolve(string raw)
    {
        if (Loc.TryGetString(Prefix + Slug(raw), out var direct))
            return direct;

        // Map authors number repeated rooms ("Dorms 3", "Hallway 12"). Translating every numbered
        // variant separately would be pointless, so retry on the stem and re-attach the number.
        var trimmed = raw.TrimEnd();
        var i = trimmed.Length;
        while (i > 0 && IsAsciiDigit(trimmed[i - 1]))
            i--;

        if (i == trimmed.Length || i == 0)
            return raw;

        var stem = trimmed[..i].TrimEnd();
        var number = trimmed[i..];
        if (stem.Length != 0 && Loc.TryGetString(Prefix + Slug(stem), out var stemmed))
            return $"{stemmed} {number}";

        return raw;
    }

    /// <summary>
    /// Resolves a body of prose written straight into map YAML — <c>PaperComponent.content</c> on
    /// map-placed notes and manuals. Prototype papers store a loc id there, so that is tried first
    /// and this stays a no-op for them; map-authored English prose is far too long to slug, so it
    /// is looked up by a digest of its own text instead. Untranslated prose is returned unchanged.
    /// </summary>
    /// <remarks>
    /// Digesting the text rather than naming the key means an upstream rewording simply misses and
    /// falls back to English, instead of silently showing a translation of the old wording.
    /// </remarks>
    public static string LocalizeParagraph(string? raw)
    {
        if (string.IsNullOrWhiteSpace(raw))
            return raw ?? string.Empty;

        if (Loc.TryGetString(raw, out var byId))
            return byId;

        return Loc.TryGetString(ParagraphPrefix + ParagraphHash(raw), out var byHash) ? byHash : raw;
    }

    /// <summary>
    /// 12 hex digits of an FNV-1a 64 over the whitespace-normalized text, taken as UTF-16 code
    /// units. Normalizing means re-wrapping a YAML block scalar does not invalidate the key.
    /// Kept in sync with <c>Tools/localization/extract_map_papers.py</c>; there is a cross-check
    /// of all shipped paragraphs, so re-run it if either side changes.
    /// </summary>
    private static string ParagraphHash(string raw)
    {
        var hash = FnvOffsetBasis;

        foreach (var c in Normalize(raw))
        {
            hash = (hash ^ (byte) (c & 0xFF)) * FnvPrime;
            hash = (hash ^ (byte) (c >> 8)) * FnvPrime;
        }

        var hex = new StringBuilder(12);
        for (var shift = 60; shift >= 16; shift -= 4)
        {
            var nibble = (int) ((hash >> shift) & 0xF);
            hex.Append((char) (nibble < 10 ? '0' + nibble : 'a' + nibble - 10));
        }

        return hex.ToString();
    }

    /// <summary>
    /// Collapses every run of ASCII whitespace to a single space and trims the ends. The set is
    /// spelled out so the Python side can match it exactly.
    /// </summary>
    private static string Normalize(string raw)
    {
        var sb = new StringBuilder(raw.Length);
        var pendingSpace = false;

        foreach (var c in raw)
        {
            if (c is ' ' or '\t' or '\n' or '\r' or '\f' or '\v')
            {
                pendingSpace = sb.Length != 0;
                continue;
            }

            if (pendingSpace)
            {
                sb.Append(' ');
                pendingSpace = false;
            }

            sb.Append(c);
        }

        return sb.ToString();
    }

    /// <summary>
    /// Folds arbitrary map text into a Fluent-safe id: lowercase ASCII alphanumerics, every other
    /// run collapsed to a single hyphen. "ERT Prep [North]" becomes "ert-prep-north".
    /// </summary>
    private static string Slug(string raw)
    {
        var sb = new StringBuilder(raw.Length);
        var pendingSeparator = false;

        foreach (var c in raw)
        {
            var upper = c is >= 'A' and <= 'Z';

            if (upper || c is >= 'a' and <= 'z' || IsAsciiDigit(c))
            {
                if (pendingSeparator && sb.Length != 0)
                    sb.Append('-');
                pendingSeparator = false;
                sb.Append(upper ? (char) (c + 32) : c);
            }
            else
            {
                pendingSeparator = true;
            }
        }

        return sb.ToString();
    }

    private static bool IsAsciiDigit(char c) => c is >= '0' and <= '9';
}
