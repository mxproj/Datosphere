using Datosphere.Abstractions;
using Datosphere.Services;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;


namespace Datosphere.Infrastructure;


public class Init
{
    public static void ConfigureBuilder(WebApplicationBuilder builder)
    {
        builder.Services.AddSingleton<IMemberProfileRepository, MemberProfileService>();
        builder.Services.AddSingleton<IMemberSnippetsRepository, MemberSnippetsService>();
    }
}
