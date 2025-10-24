<#  Run from repo root:
    powershell -ExecutionPolicy Bypass -File .\Setup.ps1
#>

param(
  [switch]$SkipAngular,     # add -SkipAngular to skip SPA scaffold
  [switch]$SkipData,        # skip data layer
  [switch]$SkipCerts,       # skip cert helpers
  [switch]$DryRun           # print steps, don't execute
)

$ErrorActionPreference = "Stop"

<#
function Run-Step($path) {
  Write-Host "==> $path" -ForegroundColor Cyan
  if ($DryRun) { return }
  & $path @PSBoundParameters
}
#>

function Run-Step($path) {
  Write-Host "==> $path" -ForegroundColor Cyan
  if ($DryRun) { return }
  & $path   # <-- don't forward @PSBoundParameters
}

# Ensure scripts can dot-source common helpers
$global:RepoRoot = (Get-Location)
$global:Scripts  = Join-Path $RepoRoot "scripts"

Run-Step (Join-Path $Scripts "00-init.ps1")
Run-Step (Join-Path $Scripts "10-rest-dotnet.ps1")

if (-not $SkipData)   { Run-Step (Join-Path $Scripts "20-data-layer.ps1") }
if (-not $SkipAngular){ Run-Step (Join-Path $Scripts "30-spa-angular.ps1") }

Run-Step (Join-Path $Scripts "40-orchestration.ps1")
if (-not $SkipCerts)  { Run-Step (Join-Path $Scripts "50-certs.ps1") }

Run-Step (Join-Path $Scripts "99-build.ps1")

Write-Host "`n✅ All steps completed." -ForegroundColor Green
