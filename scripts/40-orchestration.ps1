. "$PSScriptRoot\common.ps1"

Ensure-Dir (Join-Path $RepoRoot "ORCHESTRATION\AWS")
Ensure-Dir (Join-Path $RepoRoot "ORCHESTRATION\Tooling")

# Placeholders to be filled later (CDK/Terraform/GitHub Actions)
Write-Once (Join-Path $RepoRoot "ORCHESTRATION\README.md") @"
# Orchestration

- Put IaC (Terraform/CDK), pipelines, and deployment recipes here.
"@
