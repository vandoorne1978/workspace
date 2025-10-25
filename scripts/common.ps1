# Common helpers (dot-source this in each step)
$ErrorActionPreference = "Stop"

function Ensure-Dir($path) {
  if (-not (Test-Path $path)) { New-Item -ItemType Directory -Force -Path $path | Out-Null }
}

function Write-Once($path, $content) {
  if (-not (Test-Path $path)) { $content | Set-Content -Encoding UTF8 $path }
}

function Append-Line($path, [string]$line) {
  if (-not (Test-Path $path)) {
    New-Item -ItemType File -Path $path -Force | Out-Null
  }
  # Read all lines safely; treat path literally (handles special chars)
  $content = Get-Content -LiteralPath $path -ErrorAction SilentlyContinue
  if ($null -eq $content -or ($content -notcontains $line)) {
    Add-Content -LiteralPath $path -Value $line
  }
}
function Exec($cmd, [string]$argLine) {
    Write-Host "    > $cmd $argLine"
    $tokensErr = $null
    $tokens = [System.Management.Automation.PSParser]::Tokenize($argLine, [ref]$tokensErr) |
              Where-Object { $_.Type -in 'CommandArgument','String','Number' } |
              ForEach-Object { $_.Content }

    # Re-quote args that contain spaces
    $quotedArgs = @()
    foreach ($t in $tokens) {
        if ($t -match '\s') {
            $quotedArgs += "`"$t`""
        } else {
            $quotedArgs += $t
        }
    }

    & $cmd @quotedArgs
    if ($LASTEXITCODE -ne 0) { throw "Command failed: $cmd $argLine" }
}

function Have-Cmd($name) {
  $null -ne (Get-Command $name -ErrorAction SilentlyContinue)
}
