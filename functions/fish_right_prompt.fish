function fish_right_prompt -d "Write out the right prompt"
    set -l exit_code $status
    if test $exit_code -eq 0
      set_color green
      printf '[normal]'
    else if test $exit_code -eq 1
      set_color red
      printf '[error]'
    else
      set_color red
      printf '[%d]' $exit_code
    end
    set_color blue 
    echo '|' 
    set_color ff9900
    date '+%R:%S '
    set_color normal

end
