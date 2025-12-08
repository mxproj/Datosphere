using Datosphere.Domain.OptionTypes.Member.Body;

namespace Datosphere.Domain.Models.Member.Body;


public record BodyMod
{
    public long Id { get; init; }
    public BodyModMethod? ModMethod { get; init; }   // enum for method
    public BodyModType? ModType { get; init; }       // enum for type of body mod
    public BodyArtLocation? Location { get; init; }  // reuse BodyArtLocation
    public string? Tags { get; init; }               // CSV of ints referencing tags
}
