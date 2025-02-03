namespace Datosphere.Auth.Model;


public record StoredCredentials
{
    public string Email { get; init; } = null!;
    public string PasswordHash { get; init; } = null!;
    public string Salt { get; init; } = null!;
}

