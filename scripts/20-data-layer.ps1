. "$PSScriptRoot\common.ps1"

# Create structure placeholders
Ensure-Dir (Join-Path $RepoRoot "DATA_LAYER\Repositories\.NET 9\PostgresDapper")
Ensure-Dir (Join-Path $RepoRoot "DATA_LAYER\Repositories\.NET 9\EntityFramework")
Ensure-Dir (Join-Path $RepoRoot "DATA_LAYER\Repositories\Node.js")
Ensure-Dir (Join-Path $RepoRoot "DATA_LAYER\Database\Postgres\Init")
Ensure-Dir (Join-Path $RepoRoot "DATA_LAYER\Database\Postgres\Update")

# NOTE: We don't create/link a .csproj here because your Dapper repo likely exists elsewhere.
# You can later add:
# dotnet sln "REST\.NET 9\Base.Solution\Base.sln" add "DATA_LAYER\Repositories\.NET 9\PostgresDapper\<YourProject>.csproj"
