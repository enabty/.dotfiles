function fish_greeting
  set -f row1 '🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟'
  set -f row2 '🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟'
  set -f gstr 'wl-paste: '

  echo $row1
  # tmux list-sessions
  echo $gstr $(wl-paste)
  # echo \n
  echo $row2
end
