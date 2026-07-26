using System.Collections.Generic;
using Robust.Client.Graphics;
using Robust.Client.ResourceManagement;
using Robust.Client.UserInterface.RichText;
using Robust.Shared.Prototypes;

namespace Content.Client.Localization;

/// <summary>
/// zh-CN: rich text tags ([bold], [font=...], headings) resolve fonts through
/// <see cref="FontPrototype"/>, which is a single font file with no CJK glyphs —
/// stylesheet font stacks never apply there. This hijack stacks a CJK fallback
/// font onto each affected prototype so examine names, chat messages, speech
/// bubbles, spoken languages and documents can render Chinese.
///
/// The fallback is style-matched: species/language display fonts (RubikBubbles,
/// Draconic, ...) get a rounded or brush Chinese face so Chinese text keeps the
/// flavour of the Latin font instead of falling back to plain sans. Adding CJK to
/// the language fonts does NOT reveal obfuscated speech: obfuscation replaces the
/// text with Latin syllables (blob/plop/...) before it is drawn, so only genuinely
/// understood Chinese ever hits the CJK glyphs.
/// </summary>
public static class CjkFontFallback
{
    private const string Sans = "/Fonts/NotoSansSC/NotoSansCJKsc-Regular.otf";
    private const string SansBold = "/Fonts/NotoSansSC/NotoSansCJKsc-Bold.otf";
    private const string Rounded = "/Fonts/_zhCN/LXGW975Yuan-Regular.ttf"; // 圆体
    private const string Brush = "/Fonts/_zhCN/LXGWWenKai-Regular.ttf";    // 楷体/手写

    /// <summary>
    /// Font prototype id -> the Chinese face to stack under it. Anything not listed
    /// is left untouched (icon fonts, dot-matrix screens which cannot show CJK).
    /// </summary>
    private static readonly Dictionary<string, string> Fallbacks = new()
    {
        // UI / default text — plain sans.
        ["Default"] = Sans,
        ["DefaultItalic"] = Sans,
        ["DefaultBold"] = SansBold,
        ["DefaultBoldItalic"] = SansBold,
        ["NotoSansDisplay"] = Sans,
        ["NotoSansDisplayItalic"] = Sans,
        ["NotoSansDisplayBold"] = SansBold,
        ["NotoSansDisplayBoldItalic"] = SansBold,
        ["Monospace"] = Sans,         // [mono] 标签（机密文件正文等）

        // Rounded / cute species languages — rounded Chinese (LXGW 975 Yuan).
        ["RubikBubbles"] = Rounded,   // 史莱姆语 Bubblish
        ["Squeakish"] = Rounded,      // 吱吱语
        ["Lagomorphian"] = Rounded,   // 兔语
        ["Lymphatic"] = Rounded,

        // Ornate / arcane / classical languages — brush Chinese (LXGW WenKai).
        ["Draconic"] = Brush,         // 龙语
        ["Copperplate"] = Brush,      // 铜版体
        ["MonasteryRaid"] = Brush,
        ["Darktongue"] = Brush,
        ["Cosmic"] = Brush,
        ["Mangat"] = Brush,
        ["Octatrax"] = Brush,
        ["Scratch"] = Brush,
        ["Thaveyan"] = Brush,
        ["SignatureFont"] = Brush,    // 签名手写体
    };

    public static void Initialize()
    {
        var cache = IoCManager.Resolve<IResourceCache>();
        var protoMan = IoCManager.Resolve<IPrototypeManager>();
        var hijackHolder = IoCManager.Resolve<FontTagHijackHolder>();
        var fontCache = new Dictionary<(string, int), Font>();

        hijackHolder.Hijack = (protoId, size) =>
        {
            if (!Fallbacks.TryGetValue(protoId.Id, out var cjkPath))
                return null;

            if (fontCache.TryGetValue((protoId.Id, size), out var cached))
                return cached;

            if (!protoMan.TryIndex(protoId, out var proto))
                return null;

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
