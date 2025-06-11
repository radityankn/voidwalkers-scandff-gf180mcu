#!/bin/bash

# Script to update project from template upstream
# Usage: ./update_template.sh

TEMPLATE_REPO="https://github.com/Jianxun/iic-osic-tools-project-template.git"
TEMPLATE_BRANCH="main"

# Check if we're inside a git repository
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "❌ This is not a git repository. Please run this script from inside your project folder."
  exit 1
fi

# Check if 'upstream' remote already exists
if git remote get-url upstream > /dev/null 2>&1; then
  echo "🔄 Using existing 'upstream' remote."
else
  echo "➕ Adding upstream remote: $TEMPLATE_REPO"
  git remote add upstream "$TEMPLATE_REPO"
fi

# Fetch updates from upstream
echo "📥 Fetching updates from upstream..."
git fetch upstream

# Merge changes from the upstream template
echo "🔀 Merging changes from upstream/$TEMPLATE_BRANCH into your current branch..."
git merge upstream/"$TEMPLATE_BRANCH"

echo "✅ Update complete. Resolve any conflicts if prompted."
