function mkcd
    set -f dir "$argv"
    mkdir $dir
    cd $dir
end
