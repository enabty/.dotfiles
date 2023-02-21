function dvdv
  set -f S1 flora
  set -f S2 ssh
  if not $TMUXSTARTED 
    set -Ux TMUXSTARTED true
    # set -g TMUXS1 tmux new-session -d -s $S1 -n DEF 
    # set -g TMUXS2 tmux new-session -d -s $S2 -n DEF 
    # set -g TMUXS3 tmux new-session -d -s $S3 -n DEF 
    set -g TMUXS1 tmux new-session -d -s $S1 
    set -g TMUXS2 tmux new-session -d -s $S2

    eval $TMUXS1
    eval $TMUXS2

    tmux attach-session -d -t $S1 

  end
end
