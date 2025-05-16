#!/bin/bash
































# ✅ Safety check: Set core.autocrlf to true if not already configured
if ! git config --global core.autocrlf > /dev/null; then
    git config --global core.autocrlf true
    echo "Set core.autocrlf to true (first-time setup)"
fi

# Create venv
if command -v python3.12 &> /dev/null; then
    python3.12 -m venv venv
elif command -v py &> /dev/null; then
    py -3.12 -m venv venv
else
    echo "❌ Python 3.12 not found"
    exit 1
fi