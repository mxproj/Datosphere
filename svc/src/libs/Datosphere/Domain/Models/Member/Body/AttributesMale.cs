using Datosphere.Domain.OptionTypes.Member.Body;


namespace Datosphere.Domain.Models.Member.Body;


public record AttributesMale
{
    public ForeskinType? Foreskin { get; init; }   // 0: circumcised, 1: has-foreskin, 2: phimosis
    public short? CockLengthCm { get; init; }
    public short? CockGirthCm { get; init; }
    public bool? Enlarged { get; init; }
    public string? PenileImplants { get; init; }       // CSV of ints: 0: none, 1: silicone, 2: fat/collagen, etc.
    public EjaculationAmount? EjaculationAmount { get; init; }
    public EjaculationType? EjaculationType { get; init; }
    public bool? Multishooter { get; init; }
}
