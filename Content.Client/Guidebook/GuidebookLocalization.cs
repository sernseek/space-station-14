using Robust.Shared.ContentPack;
using Robust.Shared.Utility;

namespace Content.Client.Guidebook;

/// <summary>
/// zh-CN: guidebook documents are raw XML files, so Fluent can't localize them.
/// Translated copies live in a culture-named mirror directory
/// (e.g. /ServerInfo/Guidebook/zh-CN/Engineering/Power.xml) and are picked up here,
/// falling back to the original file when no translation exists. The English
/// originals stay untouched, which keeps upstream syncs conflict-free.
/// </summary>
public static class GuidebookLocalization
{
    private static readonly ResPath GuidebookRoot = new("/ServerInfo/Guidebook");

    public static ResPath GetLocalizedGuide(this IResourceManager resourceManager, ResPath path)
    {
        var culture = IoCManager.Resolve<ILocalizationManager>().DefaultCulture?.Name;
        if (culture is null or "en-US")
            return path;

        if (!path.TryRelativeTo(GuidebookRoot, out var relative))
            return path;

        var localized = GuidebookRoot / culture / relative.Value;
        return resourceManager.ContentFileExists(localized) ? localized : path;
    }
}
