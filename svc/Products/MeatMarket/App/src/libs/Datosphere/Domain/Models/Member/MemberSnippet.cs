namespace Datosphere.Domain.Models.Member;


public class MemberSnippet
{
    public required Guid Uuid { get; init; }
    public required string Name { get; init; }
    public required string ImageID { get; init; }
    public short? Age { get; init; }
    public DateTime? LastActive { get; init; }
}