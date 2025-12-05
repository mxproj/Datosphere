using Datosphere.Domain.OptionTypes.Member.Body;


namespace Datosphere.Domain.Models.Member.Body;


public record Piercing
{
    public long Id { get; init; }
    public PiercingJewelryType? JewelryType { get; init; }
    public IReadOnlyList<string>? Tags { get; init; }
    public BodyArtLocation? Location { get; init; }
}
