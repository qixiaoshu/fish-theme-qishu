function fish_right_prompt -d "Write out the right prompt"
    set -l exit_code $status
    if test $exit_code -ne 0
      set_color red
      printf '[error]'
    else if test $exit_code -ne 1
      set_color green
      printf '[true]'
    else
      printf ' '
    end
    set_color blue 
    echo '|' 
    set_color yellow
    date '+%R:%S %A Day:%j Week:%W %F '
    set_color normal

end
