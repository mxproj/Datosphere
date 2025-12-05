namespace Datosphere.Domain.Models.Member.Body;


public record AttributesFemale
{
    public string? CupSize { get; init; }       // e.g., A, B, C, DD
    public short? BustSizeCm { get; init; }
    public short? WaistSizeCm { get; init; }
    public short? HipSizeCm { get; init; }
    public bool? BreastImplants { get; init; }
}
