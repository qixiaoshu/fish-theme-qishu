if status is-interactive
    # Commands to run in interactive sessions can go here

# Colorscheme: Current
set -U fish_color_normal normal
set -U fish_color_command 66ccf9
set -U fish_color_quote 00ff87
set -U fish_color_redirection b48ead
set -U fish_color_end ff5f5f
set -U fish_color_error ebcb8b
set -U fish_color_param 66ccff
set -U fish_color_comment 8cc269
set -U fish_color_match --background=brblue
set -U fish_color_selection white --bold --background=brblack
set -U fish_color_search_match bryellow --background=brblack
set -U fish_color_history_current --bold
set -U fish_color_operator 00a6b2
set -U fish_color_escape 00a6b2
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_valid_path --underline
set -U fish_color_autosuggestion b7ae8f
set -U fish_color_user brgreen
set -U fish_color_host normal
set -U fish_color_cancel --reverse
set -U fish_pager_color_background
set -U fish_pager_color_prefix normal --bold --underline
set -U fish_pager_color_progress brwhite --background=cyan
set -U fish_pager_color_completion normal
set -U fish_pager_color_description B3A06D
set -U fish_pager_color_selected_background --background=brblack
set -U fish_pager_color_selected_prefix
set -U fish_pager_color_selected_completion
set -U fish_pager_color_selected_description
set -U fish_pager_color_secondary_prefix
set -U fish_pager_color_secondary_description
set -U fish_color_keyword
set -U fish_pager_color_secondary_background
set -U fish_pager_color_secondary_completion
set -U fish_color_option
set -U fish_color_host_remote

alias xz='sudo pacman -S'
alias gx='sudo pacman -Syyu'
alias cl='clear'
alias rm='rm -rf'
alias ll='ls -al'
end
