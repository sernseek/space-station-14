using Content.Shared.MapText;
using Robust.Client.Graphics;

namespace Content.Client.MapText;

[RegisterComponent]
public sealed partial class MapTextComponent : SharedMapTextComponent
{
    /// <summary>
    /// The font that gets cached on component init or state changes
    /// </summary>
    /// <remarks>
    /// zh-CN: widened from VectorFont so the cached face can be a StackedFont carrying the CJK
    /// fallback. Only ever consumed as a <see cref="Font"/> by MapTextOverlay.
    /// </remarks>
    [ViewVariables]
    public Font? CachedFont;

    /// <summary>
    /// The text currently being displayed. This is either <see cref="SharedMapTextComponent.Text"/> or the
    /// localized text <see cref="SharedMapTextComponent.LocText"/> or
    /// </summary>
    public string CachedText = string.Empty;
}
