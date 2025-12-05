using Datosphere.Domain.OptionTypes.Member.Body;


namespace Datosphere.Domain.Models.Member.Body;


public record MemberBodyAttributes
{
    public short? HeightCm { get; init; }
    public short? WeightKg { get; init; }
    public BodyBuild? Build { get; init; }
    public BodyBuild? Belly { get; init; }
    public BodyBuild? Legs { get; init; }
    public HairColor? HairColor { get; init; }
    public HairLength? HairLength { get; init; }
    public Grooming? GroomingLegs { get; init; }
    public GroomingBikini? GroomingBikini { get; init; }
    public Grooming? GroomingFullbody { get; init; }
    public Grooming? GroomingAnus { get; init; }
    public bool? AnusBleached { get; init; }
    public IReadOnlyList<Tattoo>? Tattooes { get; init; }
    public IReadOnlyList<Piercing>? Piercings { get; init; }
    public IReadOnlyList<BodyMod>? BodyMods { get; init; }
    public string? Extrattributes { get; init; }
}
