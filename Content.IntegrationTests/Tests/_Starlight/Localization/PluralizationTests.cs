using Content.IntegrationTests.Fixtures;
using Robust.Shared.Localization;

namespace Content.IntegrationTests.Tests._Starlight.Localization;

[TestFixture]
public sealed class PluralizationTests : GameTest
{
    // zh-CN: the default culture is now zh-CN, whose translation has no plural
    // forms, so this asserts the localized round-end line renders correctly.
    // MAKEPLURAL itself is still exercised by en-US fallback messages.
    [Test]
    [TestCase(3, "cow", "本局共有3名cow。")]
    [TestCase(3, "thief", "本局共有3名thief。")]
    [TestCase(3, "carp", "本局共有3名carp。")]
    public async Task EORPluralizationTest(int count, string antag, string expected)
    {
        var pair = Pair;
        var server = pair.Server;

        var locMan = server.ResolveDependency<ILocalizationManager>();

        var result = locMan.GetString("objectives-round-end-result", ("count", count), ("agent", antag));

        Assert.That(result, Is.EqualTo(expected));
    }
}
