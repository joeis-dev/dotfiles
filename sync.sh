#!/bin/bash

# Navigate to the dotfiles repository
cd /home/joe/repositories/dotfiles

# Source the environment variables to get credentials
if [ -f "/home/joe/repositories/dotfiles/.env" ]; then
    source "/home/joe/repositories/dotfiles/.env"
fi

# Add all changes to staging
git add .

# Only commit if there are changes
if git diff-index --quiet HEAD --; then
    echo "No changes to commit."
    exit 0
fi

# Commit the changes with a timestamp
git commit -m "Dotfiles update for $(date +'%Y-%m-%d')"

# Push the changes to the master branch on GitHub
# Use the GITHUB_USER and GITHUB_TOKEN from the .env file
git push https://${GITHUB_USER}:${GITHUB_TOKEN}@github.com/joeis-dev/dotfiles.git master
