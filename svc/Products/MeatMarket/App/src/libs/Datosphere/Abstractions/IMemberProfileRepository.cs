using Datosphere.Domain.Models.Member;


namespace Datosphere.Abstractions;


public interface IMemberProfileRepository
{
    Task<MemberProfile?> GetMemberProfile(string username);
    Task<MemberProfile?> GetMemberProfile(Guid guid);
}