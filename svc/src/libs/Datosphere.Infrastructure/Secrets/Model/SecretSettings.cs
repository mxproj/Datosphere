namespace Datosphere.Infrastructure.Secrets.Model;


public record SecretSettings
{
    public SqlConfig? Sql { get; init; }
}


public record SqlConfig
{
    public ConnectionStringsConfig? ConnectionStrings { get; init; }
}


public record ConnectionStringsConfig
{
    public string? DefaultConnection { get; init; }
}
