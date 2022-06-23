#!/usr/bin/env fish
if not functions -q fisher
    set -q XDG_CONFIG_HOME
    or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher update
end
# Set up Pyenv
if command -v pyenv 1>/dev/null 2>&1
    pyenv init - | source
end
# cd $HOME
