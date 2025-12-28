#!/bin/bash
# Bash script to update all submodules
# This script initializes and updates all Git submodules in the repository

echo "Initializing and updating all submodules..."

# Initialize submodules if not already initialized
git submodule init

# Update all submodules to their latest commits
git submodule update --remote --merge

echo "All submodules have been updated successfully!"
