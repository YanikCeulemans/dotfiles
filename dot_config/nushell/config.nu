# config.nu
#
# Installed by:
# version = "0.109.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R
$env.config.edit_mode = "vi"
$env.config.buffer_editor = "nvim"
$env.config.cursor_shape.vi_insert = "line"       # Cursor shape in vi-insert mode
$env.config.cursor_shape.vi_normal = "block"  # Cursor shape in normal vi mode
$env.config.completions.algorithm = "fuzzy"

alias n = nvim

# See also Awesome Nu: https://github.com/nushell/awesome-nu?tab=readme-ov-file

# cloned from repo: https://github.com/KamilKleina/git-aliases.nu
overlay use ./git-aliases.nu/git-aliases.nu

# cloned from repo: https://github.com/nushell/nu_scripts/blob/main/custom-completions/git/git-completions.nu
source ./nu_scripts/custom-completions/git/git-completions.nu

source ($nu.default-config-dir | path join zoxide.nu)
use ($nu.default-config-dir | path join mise.nu)
