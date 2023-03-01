function abb
  # set -f package (echo "$argv[2]" | cut -d' ' -f1)
  set -f action "$argv[1]"
  set -f abb_file ~/.config/fish/conf.d/abbrs.fish
  # set -f install_bool false

  if test "$action" = "-v" -o "$action" = "verbose"
    cat $abb_file 
  else if test "$action" = "-e" -o "$action" = "edit"
    chezmoi edit $abb_file
    check_output
    # check_output chezmoi diff
  else
    echo "No argument given, exiting" 
  end

end

function check_output
  set -l var (chezmoi diff)
  if test -z "$var"
    echo "No diff from chezmoi"
  else
    chezmoi diff
    echo "Chezmoi apply?"
    yesno_prompt
  end
end

function yesno_prompt
# Keep asking until we get a valid response
  while read --nchars 1 -l response --prompt-str="Are you sure? (y/n)"
        or return 1 # if the read was aborted with ctrl-c/ctrl-d
      switch $response
          case y Y
              echo "Applying.." 
              chezmoi apply -v
              # We break out of the while and go on with the function
              break
          case n N
              # We return from the function without printing
              echo "Doing nothing" 
              return 1
          case '*'
              # We go through the while loop and ask again
              echo Not valid input
              continue
      end
  end
end
