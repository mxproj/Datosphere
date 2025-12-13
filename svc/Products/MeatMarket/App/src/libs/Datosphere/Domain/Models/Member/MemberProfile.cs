namespace Datosphere.Domain.Models.Member;


public record MemberProfile
{
    /// <summary>
    /// The Key is IsoLocale
    /// </summary>
    public required IReadOnlyDictionary<string, MemberBasicInfo> BasicInfo { get; init; }
    public required MemberAttributes Attributes { get; init; }
    public required string MainImageID { get; init; }
    public required IReadOnlyList<string> Images { get; init; }
}