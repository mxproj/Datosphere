using System.Text.Json;
using Datosphere.Infrastructure.Secrets.Model;


namespace Datosphere.Infrastructure.Secrets.Utils;


public class SecretsReader
{
    private const string FilePath = "./secrets.json";

    public SecretSettings ReadSecrets()
    {
        if (!File.Exists(FilePath))
        {
            throw new FileNotFoundException($"Secrets file not found: {FilePath}");
        }

        var json = File.ReadAllText(FilePath);
        var secrets = JsonSerializer.Deserialize<SecretSettings>(json);

        if (secrets == null)
        {
            throw new InvalidOperationException("Failed to deserialize secrets.");
        }

        return secrets;
    }

}
