. "$PSScriptRoot\common.ps1"

# Dotnet wrapper that takes an argument ARRAY (no string parsing).
function DX([string[]]$argv) {
  Write-Host "    > dotnet $($argv -join ' ')"
  & dotnet @argv
  if ($LASTEXITCODE -ne 0) { throw "dotnet failed: $($argv -join ' ')" }
}


$root = Join-Path $RepoRoot "REST\.NET 9\Base.Solution"
$src  = Join-Path $root "src"
Ensure-Dir $src

Push-Location $root

# Solution
if (-not (Test-Path "Base.sln")) { DX @("new","sln","-n","Base") }

# Projects
$projects = @(
  @{Name="Base.Api";            T="webapi"},
  @{Name="Base.User.Api";       T="classlib"},
  @{Name="Base.Session.Api";    T="classlib"},
  @{Name="User.Contracts";      T="classlib"},
  @{Name="Session.Contracts";   T="classlib"}
)

foreach ($p in $projects) {
  $pdir = Join-Path $src $p.Name
  $csproj = Join-Path $pdir "$($p.Name).csproj"
  if (-not (Test-Path $csproj)) {
    Ensure-Dir $pdir
    DX @("new",$p.T,"-n",$p.Name,"-f","net9.0","-o",$pdir)
  }
  DX @("sln","add",$csproj)
}

# Ensure MVC in classlibs
function Add-AspNetRef($csproj) {
  [xml]$xml = Get-Content $csproj
  $ig = $xml.Project.ItemGroup | Select-Object -First 1
  if (-not $ig) { $ig = $xml.CreateElement("ItemGroup"); $xml.Project.AppendChild($ig) | Out-Null }
  $exists = $false
  foreach ($n in $ig.ChildNodes) { if ($n.Name -eq "FrameworkReference" -and $n.Include -eq "Microsoft.AspNetCore.App") { $exists=$true } }
  if (-not $exists) {
    $fr = $xml.CreateElement("FrameworkReference"); $fr.SetAttribute("Include","Microsoft.AspNetCore.App")
    $ig.AppendChild($fr) | Out-Null; $xml.Save($csproj)
  }
}
Add-AspNetRef (Join-Path $src "Base.User.Api\Base.User.Api.csproj")
Add-AspNetRef (Join-Path $src "Base.Session.Api\Base.Session.Api.csproj")

# References
DX @("add", (Join-Path $src "Base.Api\Base.Api.csproj"), "reference", (Join-Path $src "Base.User.Api\Base.User.Api.csproj"))
DX @("add", (Join-Path $src "Base.Api\Base.Api.csproj"), "reference", (Join-Path $src "Base.Session.Api\Base.Session.Api.csproj"))

DX @("add", (Join-Path $src "Base.User.Api\Base.User.Api.csproj"), "reference", (Join-Path $src "User.Contracts\User.Contracts.csproj"))
DX @("add", (Join-Path $src "Base.Session.Api\Base.Session.Api.csproj"), "reference", (Join-Path $src "Session.Contracts\Session.Contracts.csproj"))

# Directory.Build.props (uniform settings)
$props = Join-Path $root "Directory.Build.props"
Write-Once $props @"
<Project>
  <PropertyGroup>
    <TargetFramework>net9.0</TargetFramework>
    <Nullable>enable</Nullable>
    <ImplicitUsings>enable</ImplicitUsings>
    <LangVersion>latest</LangVersion>
  </PropertyGroup>
</Project>
"@

# Program.cs wiring for Application Parts
$program = Join-Path $src "Base.Api\Program.cs"
@"
using Base.User.Api;
using Base.Session.Api;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers()
    .AddApplicationPart(typeof(Marker).Assembly) // User
    .AddApplicationPart(typeof(Base.Session.Api.Marker).Assembly); // Session

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();
app.UseSwagger();
app.UseSwaggerUI();
app.MapControllers();
app.Run();
"@ | Set-Content -Encoding UTF8 $program

# Marker types
"namespace Base.User.Api { public static class Marker {} }"     | Set-Content -Encoding UTF8 (Join-Path $src "Base.User.Api\Marker.cs")
"namespace Base.Session.Api { public static class Marker {} }"  | Set-Content -Encoding UTF8 (Join-Path $src "Base.Session.Api\Marker.cs")

Pop-Location
