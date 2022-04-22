function makeaur
    set -l wd (pwd)
    cd ~/Downloads/AUR
    git clone "https://aur.archlinux.org/$argv.git"
    cd $argv
    makepkg -si
    cd $wd
end
