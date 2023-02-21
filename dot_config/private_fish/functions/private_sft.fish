function sft
  set -f filepath ~/.config/APPS.txt
  set -f today $(date +%D-%H:%M) 
  set -f div "----------"
  set -f sftstr "List of software"
  set -f str "$sftstr $today"

  switch $argv
    case gist
      gh gist create $filepath -d "$str" -w
    case clean
      rm $filepath
      touch $filepath
      echo "$filepath cleaned :)"
    case read cat bat show
      cat ~/.config/APPS.txt
    case bak
      echo $str > $filepath
      echo "" >> $filepath
      echo "" >> $filepath

      echo "$div Node.js (pnpm) $div" >> $filepath
      echo "" >> $filepath
      pnpm --global ls >> $filepath
      echo "" >> $filepath
      echo "" >> $filepath

      echo "$div Rust (cargo) $div" >> $filepath
      echo "" >> $filepath
      cargo install --list >> $filepath
      echo "" >> $filepath
      echo "" >> $filepath

      echo "$div Python (pipx) $div" >> $filepath
      echo "" >> $filepath
      pipx list >> $filepath
      echo "" >> $filepath
      echo "" >> $filepath

      echo "$div Paru -Q $div" >> $filepath
      echo "" >> $filepath
      paru -Q | awk '{print $1}' >> $filepath 
      echo "" >> $filepath
      echo "" >> $filepath

      echo "$div Paru -Qe $div" >> $filepath
      echo "" >> $filepath
      paru -Qe | awk '{print $1}' >> $filepath 
      echo "" >> $filepath
      echo "" >> $filepath

      echo "$div Paru -Qet $div" >> $filepath
      echo "" >> $filepath
      paru -Qet | awk '{print $1}' >> $filepath 
      echo "" >> $filepath
      echo "" >> $filepath
  end
end
