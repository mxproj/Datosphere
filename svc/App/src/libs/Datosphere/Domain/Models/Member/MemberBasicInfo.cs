namespace Datosphere.Domain.Models.Member;


public record MemberBasicInfo
{
    public required string FirstName { get; init; }
    public string? Nickname { get; init; }
    public string? MiddleNames { get; init; }
    public string? LastName { get; init; }
    public string? ClaimToFame { get; init; }
    public string? Bio { get; init; }
}
