# System specific functions
abbr -a rmrf 'rm -rf'

# LS/LSD
abbr -a ls 'lsd'
abbr -a lss 'clear && lsd'
abbr -a ls1 'lsd -1'
abbr -a lsa 'lsd -a'
abbr -a exg 'lsd -al | grep'
abbr -a lsl 'lsd -l'
abbr -a lst2 'lsd --tree --depth 2'
abbr -a lst3 'lsd --tree --depth 3'

# PS
abbr -a psm10 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%mem | head -10'
abbr -a psm50 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%mem | head -50'
abbr -a psc10 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%cpu | head -10'
abbr -a psc50 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%cpu | head -50'

# Navigation
abbr -a dlds 'cd ~/Downloads/'
abbr -a docs 'cd ~/Documents/'
abbr -a pics 'cd ~/Pictures/'
abbr -a desk 'cd ~/Desktop/'
abbr -a nts 'cd ~/nts/'
abbr -a prts 'cd ~/Pictures/screens'
abbr -a ... 'cd ../../'
abbr -a .... 'cd ../../../'
abbr -a x6 'cd ~/nts/6x/'
abbr -a pplay 'cd ~/nts/6x/ && ls -a'

# Apps
abbr -a cat 'bat'
abbr -a cpick 'hyprpicker'
abbr -a kalk 'kalker-linux'
abbr -a jj 'z'
abbr -a tt 'timetrace'

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
abbr -a gcma 'git commit --amend -m'  # Rename last commit
abbr -a grmd 'git rm $(git ls-files --deleted)'  # Remove deleted files from both index and working dir
abbr -a gl 'git log --oneline'
abbr -a gc 'git checkout'
abbr -a grc 'git reset --soft HEAD~1'  # Undo last commit
abbr -a gra 'git reset'  # Undo last add command (All or file)
abbr -a gr 'git restore'
abbr -a gm 'git mv'


# Poetry
abbr -a por 'poetry run python'
abbr -a paa 'poetry run python main.py'

# Chezmoi
abbr -a cm 'chezmoi'
abbr -a cme 'chezmoi edit'
abbr -a cmadd 'chezmoi add'
abbr -a cmappv 'chezmoi apply -v'
abbr -a cmapp 'chezmoi apply'
abbr -a cmcd 'chezmoi cd'
abbr -a cmdi 'chezmoi diff'
abbr -a vii 'chezmoi edit'

# Tree
abbr -a tree1 'tree -L 1'
abbr -a tree2 'tree -L 2'
abbr -a tree3 'tree -L 3'

# QoL
abbr -a aedit 'chezmoi edit ~/.config/fish/conf.d/abbrs.fish'
abbr -a h2 "eval (history | head -n2 | tail -n1 | sed 's/^[ ]*[0-9]*[ ]*//')"
abbr -a hh "commandline -i (history | head -n2 | tail -n1 | sed 's/^[ ]*[0-9]*[ ]*//')"


# Pacman / Yay
abbr -a yay yayy
