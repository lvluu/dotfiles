
source C:\Users\lvluu\AppData\Roaming\nushell\git.nu

# zoxide init nushell | save -f ~/.zoxide.nu
source  ~/.zoxide.nu

# mkdir ~/.local/share/atuin/
# atuin init nu | save ~/.local/share/atuin/init.nu
# source ~/.local/share/atuin/init.nu


$env.config.history = {
  file_format: sqlite
  max_size: 1_000_000
  sync_on_enter: true
}

alias g = git
alias cat = open
alias k = kubectl
alias p = pnpm
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
