. "$PSScriptRoot\common.ps1"

$certDir = Join-Path $RepoRoot "certs"
Ensure-Dir $certDir

# Ensure .gitignore is safe (already done in 00-init, but double-safe)
$gi = Join-Path $RepoRoot ".gitignore"
foreach ($line in @(".cert/","cert/","certs/","**/*.pfx","**/*.pem","**/*.crt","**/*.key")) {
  Append-Line $gi $line
}

Write-Host "Certs folder prepared at: $certDir (git-ignored)" -ForegroundColor Green
