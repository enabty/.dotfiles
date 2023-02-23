function pwdcd
  set -f fp (wl-paste)
  set -f tfp (echo $fp | string trim)
  cd $tfp
end
