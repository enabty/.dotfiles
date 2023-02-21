function c
  set -f cfp "/home/abty/.config/"
  set -f todir $argv[1]
  cd "$cfp$todir/"
end
