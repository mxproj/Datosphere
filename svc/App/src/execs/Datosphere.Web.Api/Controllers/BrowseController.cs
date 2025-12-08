using Datosphere.Abstractions;
using Datosphere.Domain.Models.Member;
using Microsoft.AspNetCore.Mvc;


namespace Datosphere.Web.Api.Controllers;


[ApiController]
[Route("api/[controller]")]
public class BrowseController : ControllerBase
{
    private readonly ILogger<BrowseController> _logger;
    private readonly IMemberSnippetsRepository _memberSnippetsRepository;


    public BrowseController(ILogger<BrowseController> logger, IMemberSnippetsRepository memberSnippetsRepository)
    {
        _logger = logger;
        _memberSnippetsRepository = memberSnippetsRepository;
    }


    [HttpGet]
    [Route("/page/{pageNum:int}")]
    public async Task<IReadOnlyList<MemberSnippet>> GetPage([FromRoute] int pageNum)
    {
        _logger.LogDebug("Getting Snippets page {Page}", pageNum);
        var snippets = await _memberSnippetsRepository.GetSnippetsPage((short)pageNum);
        return snippets;
    }
}