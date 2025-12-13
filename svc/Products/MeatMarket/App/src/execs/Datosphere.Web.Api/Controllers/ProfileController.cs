using Datosphere.Abstractions;
using Datosphere.Domain.Models.Member;
using Microsoft.AspNetCore.Mvc;


namespace Datosphere.Web.Api.Controllers;


[ApiController]
[Route("api/[controller]")]
public class ProfileController : ControllerBase
{
    private readonly ILogger<ProfileController> _logger;
    private readonly IMemberProfileRepository _memberProfileRepository;


    public ProfileController(ILogger<ProfileController> logger, IMemberProfileRepository memberProfileRepository)
    {
        _logger = logger;
        _memberProfileRepository = memberProfileRepository;
    }


    [HttpGet]
    [Route("{id}")]
    public async Task<MemberProfile?> GetProfile(string id)
    {
        _logger.LogDebug("Getting Profile");
        var profile = await _memberProfileRepository.GetMemberProfile(id);
        return profile;
    }


    [HttpGet]
    [Route("test")]
    public string Test()
    {
        return "Test";
    }
}