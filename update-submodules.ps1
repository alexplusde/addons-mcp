# PowerShell script to update all submodules
# This script initializes and updates all Git submodules in the repository

$ErrorActionPreference = "Stop"  # Exit on any error

Write-Host "Initializing and updating all submodules..." -ForegroundColor Green

# Initialize submodules if not already initialized
try {
    git submodule init
    if ($LASTEXITCODE -ne 0) {
        throw "Failed to initialize submodules"
    }
    Write-Host "Submodules initialized." -ForegroundColor Cyan
} catch {
    Write-Host "Error: $_" -ForegroundColor Red
    exit 1
}

# Update all submodules to their latest commits
try {
    git submodule update --remote --merge
    if ($LASTEXITCODE -ne 0) {
        throw "Failed to update submodules"
    }
    Write-Host "All submodules have been updated successfully!" -ForegroundColor Green
} catch {
    Write-Host "Error: $_" -ForegroundColor Red
    exit 1
}
