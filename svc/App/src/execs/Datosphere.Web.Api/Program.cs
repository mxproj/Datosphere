using Datosphere.Abstractions;
using Datosphere.Infrastructure;
using Datosphere.Services;
using MKX.Core.Constants;
using MKX.Core.Exec.Web;


await MkxWebAppBuilder.BuildAndRunWebApp("DS", "Datosphere", AppConstants.LocalDevTest, args,
    builderSetup =>
    {
        builderSetup.ConfigureHostBuilder(Init.ConfigureBuilder);
    });
