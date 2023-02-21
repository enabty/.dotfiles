function conf
  set -f cmfp ~/.local/share/chezmoi/private_dot_config/private_fish
  set -f funfp /functions/
  set -f confd /conf.d/
  set -f newln \n

  switch $argv[1]

    case fish
      switch $argv[2]
        case fun
          switch $argv[3]
            case cm
              cd $cmfp$funfp
              clear
              exa
              echo $newln
              echo ">>>>> Working in <CHEZMOI> dir"
            case '*'
              cd ~/.config/fish/functions/
              clear
              exa
              echo $newln
              echo ">>>>> Working in <SOURCE> dir."
          end
        case confd
          switch $argv[3]
            case cm
              cd $cmfp$confd
              clear
              exa
              echo $newln
              echo ">>>>> Working in <CHEZMOI> dir"
            case '*'
              cd ~/.config/fish/conf.d/
              clear
              exa
              echo $newln
              echo ">>>>> Working in <SOURCE> dir"
          end
     end
            
    case sway
      cd ~/.config/sway/config.d/
      clear
      exa
    case waybar
      cd ~/.config/waybar/
      clear
      exa
    case alacritty critty
      cd ~/.config/alacritty/
      clear
      exa
    case wofi
      cd ~/.config/wofi/
      clear
      exa
    case '*'
      echo 'No argument --> cd ~/.config/'
      cd ~/.config
      clear
      exa
  end
    
end
