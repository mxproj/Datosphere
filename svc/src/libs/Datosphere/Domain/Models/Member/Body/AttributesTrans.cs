namespace Datosphere.Domain.Models.Member.Body;


public record AttributesTrans
{
    public bool? M2F { get; init; }                  // Is the member MtF
    public bool? PostOpGenitalia { get; init; }
    public bool? BreastImplants { get; init; }
    public bool? BreastRemoved { get; init; }
    public bool? Hormones { get; init; }             // On hormone therapy
}
