. "$PSScriptRoot\common.ps1"

$sol = Join-Path $RepoRoot "REST\.NET 9\Base.Solution\Base.sln"
if (Test-Path $sol) { Exec dotnet "build `"$sol`"" }

# Optional: quick SPA install
$spa = Join-Path $RepoRoot "SPA\ANGULAR\20\Base"
if (Test-Path $spa -and (Test-Path (Join-Path $spa "package.json"))) {
  Push-Location $spa
  if (Have-Cmd "npm") { Exec npm "install" }
  Pop-Location
}
