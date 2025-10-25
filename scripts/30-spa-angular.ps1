. "$PSScriptRoot\common.ps1"

$spaRoot = Join-Path $RepoRoot "SPA\ANGULAR\20\Base"
Ensure-Dir (Split-Path $spaRoot -Parent)

if (-not (Have-Cmd "ng")) {
  Write-Host "Skipping Angular scaffold (Angular CLI not found). Install with: npm i -g @angular/cli" -ForegroundColor Yellow
  return
}

# Detect Angular CLI version
$ngVersion = (& ng version --json | ConvertFrom-Json -ErrorAction SilentlyContinue).Cli.Version
if (-not $ngVersion) {
  $ngVersion = (& ng version | Select-String "Angular CLI" | ForEach-Object { ($_ -split " ")[-1] })
}
Write-Host "Angular CLI detected: $ngVersion" -ForegroundColor Cyan

Push-Location (Split-Path $spaRoot -Parent)

# Core args (non-interactive, use defaults, skip install)
$args = @(
  "new","Base",
  "--routing",
  "--style","scss",
  "--skip-git",
  "--skip-install",
  "--defaults",
  "--interactive=false"
)

# Add standalone when supported
try {
  if ($ngVersion -and ([version]$ngVersion).Major -ge 15) {
    $args += "--standalone"
  }
} catch { }

# Explicitly disable SSR for Angular 17+
try {
  if ($ngVersion -and ([version]$ngVersion).Major -ge 17) {
    $args += "--ssr=false"
  }
} catch { }

# Explicitly disable zoneless (Angular 18+)
try {
  if ($ngVersion -and ([version]$ngVersion).Major -ge 18) {
    $args += "--zone=true"
  }
} catch { }

# Explicitly disable AI setup (Angular 20+)
try {
  if ($ngVersion -and ([version]$ngVersion).Major -ge 20) {
    $args += "--ai=false"
  }
} catch { }

Write-Host "    > ng $($args -join ' ')" -ForegroundColor Cyan
& ng @args
if ($LASTEXITCODE -ne 0) { throw "ng failed: $($args -join ' ')" }

Pop-Location
