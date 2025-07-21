#!/bin/bash

exec > >(tee -a $HOME/repositories/dotfiles/log/sync_cron.log) 2>&1
set -x

cd $HOME/repositories/dotfiles

if [ -f "$HOME/repositories/dotfiles/.env" ]; then
    source "$HOME/repositories/dotfiles/.env"
fi

git add .

# Only commit if there are changes
if git diff-index --quiet HEAD --; then
    echo "No changes to commit."
    exit 0
fi

git commit -m "Dotfiles update for $(date +'%Y-%m-%d')"
git push https://${GITHUB_USER}:${GITHUB_TOKEN}@github.com/joeis-dev/dotfiles.git master
