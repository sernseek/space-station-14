using System.Collections.Generic;
using Robust.Client.Graphics;
using Robust.Client.ResourceManagement;
using Robust.Client.UserInterface.RichText;
using Robust.Shared.Prototypes;

namespace Content.Client.Localization;

/// <summary>
/// zh-CN: rich text tags ([bold], [font=...], headings) resolve fonts through
/// <see cref="FontPrototype"/>, which is a single font file with no CJK glyphs —
/// stylesheet font stacks never apply there. This hijack stacks the CJK fallback
/// font onto the Noto UI font prototypes so examine names, chat messages and
/// speech bubbles can render Chinese. All other prototypes (alien scripts, icon
/// fonts) are left untouched so obfuscated language text stays unreadable.
/// </summary>
public static class CjkFontFallback
{
    private static readonly HashSet<string> StackedPrototypes =
    [
        "Default", "DefaultItalic", "DefaultBold", "DefaultBoldItalic",
        "NotoSansDisplay", "NotoSansDisplayItalic", "NotoSansDisplayBold", "NotoSansDisplayBoldItalic",
    ];

    public static void Initialize()
    {
        var cache = IoCManager.Resolve<IResourceCache>();
        var protoMan = IoCManager.Resolve<IPrototypeManager>();
        var hijackHolder = IoCManager.Resolve<FontTagHijackHolder>();
        var fontCache = new Dictionary<(string, int), Font>();

        hijackHolder.Hijack = (protoId, size) =>
        {
            if (!StackedPrototypes.Contains(protoId.Id))
                return null;

            if (fontCache.TryGetValue((protoId.Id, size), out var cached))
                return cached;

            if (!protoMan.TryIndex(protoId, out var proto))
                return null;

            var cjkPath = protoId.Id.Contains("Bold")
                ? "/Fonts/NotoSansSC/NotoSansCJKsc-Bold.otf"
                : "/Fonts/NotoSansSC/NotoSansCJKsc-Regular.otf";

#pragma warning disable CS0618 // FontPrototype.Path is obsolete, but this is exactly the resolution FontTag itself performs.
            var font = new StackedFont(
                new VectorFont(cache.GetResource<FontResource>(proto.Path), size),
                new VectorFont(cache.GetResource<FontResource>(cjkPath), size));
#pragma warning restore CS0618

            fontCache[(protoId.Id, size)] = font;
            return font;
        };
        hijackHolder.HijackUpdated();
    }
}
