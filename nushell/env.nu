$env.config = {
  show_banner: false
}

$env.PATH = ($env.PATH | append 'C:\Users\lvluu\go\bin')
$env.Path = ($env.Path | prepend 'C:\Users\lvluu\AppData\Local\Programs\Git\usr\bin\')
$env.Path = ($env.Path | prepend 'C:\Users\lvluu\mingw64\bin')

$env.EDITOR = "vim"

$env.PROMPT_COMMAND_RIGHT = ""

use C:\Users\lvluu\AppData\Roaming\nushell\nu_scripts\modules\prompt\basic-git.nu basic-git-left-prompt

# Get the current directory with home abbreviated
export def current-dir [] {
  let current_dir = ($env.PWD)

  let current_dir_relative_to_home = (
    do --ignore-errors { $current_dir | path relative-to $nu.home-path  | str join }
  )

  let in_sub_dir_of_home = ($current_dir_relative_to_home | is-not-empty)

  let current_dir_abbreviated = (if $in_sub_dir_of_home {
    $'~(char separator)($current_dir_relative_to_home)' | str replace -ar '\\' '/'
  } else {
    $current_dir | str replace -ar '\\' '/'
  })

  $'(ansi reset)($current_dir_abbreviated)'
}

export def create_left_prompt [] {
    let path_segment = current-dir
    # let duration_segment = do {
    #     let duration_secs = ($env.CMD_DURATION_MS | into int) / 1000
    #     if ($duration_secs >= 5) {
    #         $"(ansi yellow_bold)($duration_secs | math round | into string | append "sec" | str join | into duration) "
    #     } else {
    #         ""
    #     }
    # }
    # let exit_code_segment = if ($env.LAST_EXIT_CODE == 0) {
    #     ""
    # } else {
    #     $"(ansi red_bold)($env.LAST_EXIT_CODE) "
    # }

    [$path_segment] | str join
}

$env.PROMPT_COMMAND = {||
		 let left = create_left_prompt
		 basic-git-left-prompt $left
}

$env.config.shell_integration.osc133 = false