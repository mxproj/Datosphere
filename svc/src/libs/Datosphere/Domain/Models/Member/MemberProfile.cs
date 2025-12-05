

namespace Datosphere.Domain.Models.Member;


public record MemberProfile
{
    /// <summary>
    /// The Key is IsoLocale
    /// </summary>
    public IReadOnlyDictionary<string, MemberBasicInfo> BasicInfo { get; init; } = new Dictionary<string, MemberBasicInfo>();
    public MemberAttributes Attributes { get; init; } = new();
}