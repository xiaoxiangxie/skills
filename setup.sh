#!/bin/bash
# skills-repo setup script
# Usage: bash setup.sh
# Claude Code can run this after cloning the repo

set -e

SKILLS_DIR="${HOME}/.agents/skills"
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_SUBDIR="${REPO_DIR}/skills"

echo "==> Skills Repository Setup"
echo "    Source: ${SKILLS_SUBDIR}"
echo "    Target: ${SKILLS_DIR}"
echo ""

# Check if clawhub is available
if ! command -v clawhub &>/dev/null; then
    echo "==> Installing clawhub..."
    npm install -g clawhub
fi

# Check if skills subdirectory exists
if [ ! -d "$SKILLS_SUBDIR" ]; then
    echo "ERROR: skills/ directory not found at ${SKILLS_SUBDIR}"
    exit 1
fi

# Create target directory if needed
mkdir -p "$SKILLS_DIR"

# Copy all skills to target directory
echo "==> Copying skills to ${SKILLS_DIR}..."
cp -r "$SKILLS_SUBDIR"/* "$SKILLS_DIR/"

# Remove .clawhub and .git folders from copied skills (avoid nested repo issues)
echo "==> Cleaning up embedded git data..."
find "$SKILLS_DIR" -name ".clawhub" -type d -exec rm -rf {} + 2>/dev/null || true
find "$SKILLS_DIR" -name ".git" -type d -exec rm -rf {} + 2>/dev/null || true

echo ""
echo "==> Done! Installed $(ls "$SKILLS_DIR" | wc -l | tr -d ' ') skills"
echo ""
echo "    Skills are ready at: ${SKILLS_DIR}"
echo "    Restart your AI agent to pick them up."