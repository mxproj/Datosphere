using Microsoft.AspNetCore.Mvc;


namespace Datosphere.Web.Api.Controllers;


[ApiController]
[Route("api/[controller]")]
public class ProfileController : ControllerBase
{
    private readonly ILogger<ProfileController> _logger;


    public ProfileController(ILogger<ProfileController> logger)
    {
        _logger = logger;
    }


    [HttpGet]
    [Route("{id}")]
    public string GetProfile(string id)
    {
        return "Profile " + id;
    }


    [HttpGet]
    [Route("test")]
    public string Test()
    {
        return "Hello World";
    }
}