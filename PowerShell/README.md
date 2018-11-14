
# AMP Migration PowerShell

## Dependencies
PowerShell 5.1+

## Import PowerShell Modules
Go to the folder you installed AMP Manager, open folder "PowerShell".
Run Import-AMPMigration.ps1 with Administrator rights.

## Update Certificate Policy for PowerShell
Before running your own scripts, make sure you run the scripts below, to update the certificate policy.

```powershell
Add-Type @"
    using System.Net;
    using System.Security.Cryptography.X509Certificates;
    public class TrustAllCertsPolicy : ICertificatePolicy {
        public bool CheckValidationResult(ServicePoint srvPoint, X509Certificate certificate, WebRequest request, int certificateProblem) {
            return true;
        }
    }
"@
[System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy
```

## Get AMP URL and API Key
To make sure your PowerShell scripts connect to AMP, you have to assign two common parameters to your cmdlet.
1. BaseUri - The URL of you AMP Manager. For example, https://localhost:20100
2. ApiKey - The key to authorize the API calls. You can get the API key from AMP interface > Management > General Settings > API Keys.
