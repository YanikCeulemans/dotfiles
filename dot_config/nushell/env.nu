# env.nu
#
# Installed by:
# version = "0.109.1"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.

$env.editor = 'nvim'
$env.SSH_AUTH_SOCK = '/home/yanikc/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock'

# Added manually following instructions from: https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation
let zoxide_path = $nu.default-config-dir | path join zoxide.nu
zoxide init nushell | save --force $zoxide_path

# Added manually following instructions from: https://mise.jdx.dev/installing-mise.html#nushell
let mise_path = $nu.default-config-dir | path join mise.nu
^/home/yanikc/.local/bin/mise activate nu | save --force $mise_path
