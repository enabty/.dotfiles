function yayy
  set -f package (echo "$argv[2]" | cut -d' ' -f1)
  set -f action "$argv[1]"
  set -f yayy_file ~/.config/yayy.txt

  if test "$action" = "-S"
      yay -S $package
      if yay -Qi $package >/dev/null 2>&1
          echo "$package $(date '+%d-%m-%Y %H:%M:%S')" >> $yayy_file
          set -f output_str "Successfully installed package $package"
      end
  else if test "$action" = "-Rs"
      if yay -Rp $package >/dev/null 2>&1
          if yay -Rs $package | tee /dev/tty; and sed -i "/^$package/d" $yayy_file
              set -f output_str "Successfully removed package $package"
          else
              set -f output_str "Failed to remove package $package"
          end
      else
          set -f output_str "Package $package not found."
      end
  else
      yay $argv
  end
  echo "Done.."
  echo $output_str
  echo (tail -n 1 $yayy_file)
end
