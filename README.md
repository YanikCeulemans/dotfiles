# Setup
- Install mise: https://mise.jdx.dev/installing-mise.html
- Install chezmoi: `mise use --global chezmoi@<version number here>`
- Initialize chezmoi with my repo:
```sh
GITHUB_USERNAME=YanikCeulemans
chezmoi init --apply https://github.com/$GITHUB_USERNAME/dotfiles.git
```
