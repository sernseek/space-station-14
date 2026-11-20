using Content.Client.Guidebook;
using Content.Client.Guidebook.Richtext;
using Content.IntegrationTests.Fixtures;
using Robust.Shared.ContentPack;
using Robust.Shared.Prototypes;
using System.Linq;
using Content.Shared.Guidebook;

namespace Content.IntegrationTests.Tests.Guidebook;

[TestFixture]
[TestOf(typeof(GuidebookSystem))]
[TestOf(typeof(GuideEntryPrototype))]
[TestOf(typeof(DocumentParsingManager))]
public sealed class GuideEntryPrototypeTests : GameTest
{
    [Test]
    public async Task ValidatePrototypeContents()
    {
        var pair = Pair;
        var client = pair.Client;
        await client.WaitIdleAsync();
        var protoMan = client.ResolveDependency<IPrototypeManager>();
        var resMan = client.ResolveDependency<IResourceManager>();
        var parser = client.ResolveDependency<DocumentParsingManager>();
        var prototypes = protoMan.EnumeratePrototypes<GuideEntryPrototype>().ToList();

        foreach (var proto in prototypes)
        {
            await client.WaitAssertion(() =>
            {
                foreach (var path in new[] { proto.Text, resMan.GetLocalizedGuide(proto.Text) }.Distinct())
                {
                    using var reader = resMan.ContentFileReadText(path);
                    Assert.That(parser.TryAddMarkup(new Document(), reader.ReadToEnd()), $"Failed to parse guidebook: {proto.Id} ({path})");
                }
            });

            // Avoid styleguide update limit
            await client.WaitRunTicks(1);
        }
    }
}
