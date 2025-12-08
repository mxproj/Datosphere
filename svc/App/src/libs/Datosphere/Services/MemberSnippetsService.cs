using Datosphere.Abstractions;
using Datosphere.Domain.Models.Member;
using Microsoft.Extensions.Logging;


namespace Datosphere.Services;


public class MemberSnippetsService : IMemberSnippetsRepository
{
    private readonly ILogger<MemberSnippetsService> _logger;


    public MemberSnippetsService(ILogger<MemberSnippetsService> logger)
    {
        _logger = logger;
    }


    public async Task<IReadOnlyList<MemberSnippet>> GetSnippetsPage(short page)
    {
        _logger.LogDebug("Getting snippets for page {Page}", page);

        var snippets = await GetDummySnippets();
        _logger.LogDebug("Got {SnippetCount} snippets in page {Page}.", snippets.Count, page);

        return snippets;
    }

    private Task<List<MemberSnippet>> GetDummySnippets()
    {
        var list = new List<MemberSnippet>();
        
        list.Add(new MemberSnippet
        {
            Uuid =  Guid.NewGuid(),
            Name = "Jennie Tang",
            Age = 46,
            ImageID = "1234ABCD",
        });
        
        list.Add(new MemberSnippet
        {
            Uuid =  Guid.NewGuid(),
            Name = "Marie Channer",
            Age = 39,
            ImageID = "3456KHJ654",
        });
        
        list.Add(new MemberSnippet
        {
            Uuid =  Guid.NewGuid(),
            Name = "Ellie Tang",
            Age = 19,
            ImageID = "SGDF2354",
        });

        return Task.FromResult(list);
    }
}