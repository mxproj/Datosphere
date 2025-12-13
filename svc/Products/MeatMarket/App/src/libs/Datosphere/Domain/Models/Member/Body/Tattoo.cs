using Datosphere.Domain.OptionTypes.Member.Body;


namespace Datosphere.Domain.Models.Member.Body;


public record Tattoo
{
    public long Id { get; init; }
    public TattooMethod? TattooMethod { get; init; }
    public short? Art { get; init; }
    public IReadOnlyList<string>? Tags { get; init; }
    public BodyArtLocation? Location { get; init; }
}

