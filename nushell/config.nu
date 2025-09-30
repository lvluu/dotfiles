
source C:\Users\lvluu\AppData\Roaming\nushell\git.nu
source  ~/.zoxide.nu
# mkdir ~/.local/share/atuin/
# atuin init nu | save ~/.local/share/atuin/init.nu
source ~/.local/share/atuin/init.nu

# source C:\Users\lvluu\AppData\Roaming\nushell\direnv.nu
# source C:\Users\lvluu\AppData\Roaming\nushell\nu_scripts\custom-completions\docker\docker-completions.nu
# source C:\Users\lvluu\AppData\Roaming\nushell\nu_scripts\nu-hooks\nu-hooks\command_not_found\did_you_mean.nu

# plugin add C:\Users\lvluu\scoop\apps\rustup-gnu\current\.cargo\bin\nu_plugin_gstat.exe
# use C:\Users\lvluu\AppData\Roaming\nushell\nu_scripts\modules\prompt\panache-git.nu main
#     $env.PROMPT_COMMAND = {|| panache-git }
#     $env.PROMPT_INDICATOR = {|| $"(ansi blue)> "}
#     $env.PROMPT_INDICATOR_VI_INSERT = {|| $"(ansi green): " }
#     $env.PROMPT_INDICATOR_VI_NORMAL = {|| $"(ansi green)> " }

$env.config.history = {
  file_format: sqlite
  max_size: 1_000_000
  sync_on_enter: true
}

alias g = git
alias cat = open
alias k = kubectl
alias p = pnpm
