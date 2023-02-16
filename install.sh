#!/bin/bash

# Install GitHub Copilot CLI - https://www.npmjs.com/package/@githubnext/github-copilot-cli?activeTab=explore
npm install -g @githubnext/github-copilot-cli

# Customize oh-my-zsh
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chmod 700 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp -p "$PWD/dotfiles/.zshrc" "$HOME"
