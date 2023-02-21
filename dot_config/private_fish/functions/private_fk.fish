function fk
    set -f fzfop $(history -n 10 | fzf)
    echo "$fzfop tjeen"
    commandline -r "sudo $fzfop"
end
