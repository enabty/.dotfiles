# System specific functions
abbr -a ls 'exa'
abbr -a rmrf 'rm -rf'

# Navigation
abbr -a dlds 'cd ~/Downloads/'
abbr -a docs 'cd ~/Documents/'
abbr -a pics 'cd ~/Pictures/'
abbr -a desk 'cd ~/Desktop/'
abbr -a nts 'cd ~/nts/'
abbr -a prts 'cd ~/Pictures/screens'


# Apps
abbr -a cat 'bat'
abbr -a cpick 'hyprpicker'
abbr -a kalk 'kalker-linux'
abbr -a jj 'z'

# Echoes
abbr -a epath 'echo $PATH'

# Git
abbr -a gcm 'git commit -m'
abbr -a gpush 'git push -u origin'
abbr -a gs 'git status'
abbr -a gpull 'git pull'
abbr -a ga 'git add'
abbr -a gaa 'git add .'
abbr -a gd 'git diff'
abbr -a grm 'git rm'
abbr -a gcl 'git clone'
abbr -a gf 'git fetch'
abbr -a gb 'git branch'
abbr -a gcma 'git commit --amend -m'
abbr -a grmd 'git rm $(git ls-files --deleted)'
abbr -a gl 'git log --oneline'
abbr -a gc 'git checkout'

# Poetry
abbr -a por 'poetry run python'
abbr -a paa 'poetry run python main.py'

# Chezmoi
abbr -a cm 'chezmoi'
abbr -a cme 'chezmoi edit'
abbr -a cmadd 'chezmoi add'
abbr -a cmapp 'chezmoi apply -v'
abbr -a cmcd 'chezmoi cd'
abbr -a cmdi 'chezmoi diff'

# Tree
abbr -a tree1 'tree -L 1'
abbr -a tree2 'tree -L 2'
abbr -a tree3 'tree -L 3'

# QoL
abbr -a aedit 'chezmoi edit ~/.config/fish/conf.d/abbrs.fish'

# Todos
abbr -a clust 'bat ~/nts/patches/poetry_pytorch.md'
