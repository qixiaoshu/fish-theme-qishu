# name: Jacaetevha
function tbytes -d 'calculates the total size of the files in the current directory'
  set -l tBytes (ls -al | grep "^-" | awk 'BEGIN {i=0} { i += $5 } END { print i }')
  
  if test $tBytes -lt 1048576
    set -g total (echo -e "scale=3 \n$tBytes/1048 \nquit" | bc)
    set -g units " Kb"
  else
    set -g total (echo -e "scale=3 \n$tBytes/1048576 \nquit" | bc)
    set -g units " Mb"
  end
  echo -n "$total$units"
end

function fish_prompt
  set_color yellow
  printf '%s' (whoami)
  set_color normal
  printf ' at '

  set_color magenta
  printf 'shu' 
  set_color normal
  printf ' in '

  set_color $fish_color_cwd
  printf '%s ' (prompt_pwd)
  set_color 00b7c3
  printf '[%s]' (tbytes)
  set_color 66ccff
  printf '%s' (__fish_git_prompt)
  # Line 2
  echo
  if test $VIRTUAL_ENV
      printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color e3b4b8)
  end

  if [ fish_is_root_user = "0" ]
  set_color red  
  printf '↪  '
  else
  set_color green  
  printf '↪  '
  end

  set_color normal
end
