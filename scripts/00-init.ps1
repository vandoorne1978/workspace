. "$PSScriptRoot\common.ps1"

# Git init (safe if already a repo)
if (-not (Test-Path (Join-Path $RepoRoot ".git"))) {
  Exec git "init"
}

# Root folders
Ensure-Dir (Join-Path $RepoRoot "SPA")
Ensure-Dir (Join-Path $RepoRoot "DATA_LAYER\Repositories\.NET 9")
Ensure-Dir (Join-Path $RepoRoot "DATA_LAYER\Database")
Ensure-Dir (Join-Path $RepoRoot "ORCHESTRATION")
Ensure-Dir (Join-Path $RepoRoot "REST\.NET 9\Base.Solution\src")

# .gitignore (secure defaults + certs)
$gi = Join-Path $RepoRoot ".gitignore"
$gitignoreContent = @"
# VS/Build
.vs/
**/bin/
**/obj/
**/Debug/
**/Release/
# Node
**/node_modules/
**/dist/
# Certs
.cert/
cert/
certs/
**/*.pfx
**/*.pem
**/*.crt
**/*.key
# OS junk
.DS_Store
Thumbs.db
"@

foreach ($line in ($gitignoreContent -split "`r?`n")) {
  if ($line -ne "") { Append-Line $gi $line }
}


# README
$readme = Join-Path $RepoRoot "README.md"
Write-Once $readme @"
# Foundation Monorepo

- **SPA/** multiple front-ends (Angular/React/etc.)
- **REST/.NET 9/** .NET APIs (single host + feature libraries)
- **DATA_LAYER/** repositories + database scripts
- **ORCHESTRATION/** infra/deploy

Run \`.\Setup.ps1\` to scaffold defaults.
"@
