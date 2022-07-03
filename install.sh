#!/usr/bin/env sh

git clone --bare https://github.com/reisub0/dot-devcontainer ~/.dot
git --git-dir=$HOME/.dot --work-tree=$HOME checkout -f

fish -c 'curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher'
git --git-dir=$HOME/.dot --work-tree=$HOME checkout -f
fish -c 'fisher update'

