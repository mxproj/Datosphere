using Datosphere.Domain.Models.Member;


namespace Datosphere.Abstractions;


public interface IMemberSnippetsRepository
{
    /// <summary>
    /// Get the Member Snippets for the specified page 
    /// </summary>
    Task<IReadOnlyList<MemberSnippet>> GetSnippetsPage(short page);
}