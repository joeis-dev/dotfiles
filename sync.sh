#!/bin/bash

# Navigate to the dotfiles repository
cd /home/joe/repositories/dotfiles

# Add all changes to staging
git add .

# Commit the changes with a timestamp
git commit -m "Dotfiles update for $(date +'%Y-%m-%d')"

# Push the changes to the main branch on GitHub
git push git@github.com:joeis-dev/dotfiles.git main
