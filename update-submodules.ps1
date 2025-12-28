# PowerShell script to update all submodules
# This script initializes and updates all Git submodules in the repository

Write-Host "Initializing and updating all submodules..." -ForegroundColor Green

# Initialize submodules if not already initialized
git submodule init

# Update all submodules to their latest commits
git submodule update --remote --merge

Write-Host "All submodules have been updated successfully!" -ForegroundColor Green
