# Welcome message
fortune | cowsay | lolcat

# Add directory of scripts to PATH
set PATH "$HOME/Downloads/git/void-packages:$HOME/.config/scripts:$PATH"


# Abbreviations for xbps-* (x*)
abbr xi "doas xbps-install"
abbr xr "doas xbps-remove"
abbr xq "xbps-query"
abbr xs "xbps-src"
abbr xsi "doas xbps-install --repository ~/Downloads/git/void-packages/hostdir/binpkgs"
abbr xsi-nonfree "doas xbps-install --repository ~/Downloads/git/void-packages/hostdir/binpkgs/nonfree"
abbr xsq "ls ~/Downloads/git/void-packages/srcpkgs/ | grep"

# Misc. abbreviations
abbr la "ls -lhA"
abbr v "vim"
abbr theo "fortune theo"
abbr wttr "curl -sSL v2.wttr.in/Thu_Dau_Mot"
abbr wttr-lite "curl -sSL v2.wttr.in/Thu_Dau_Mot | grep \"Weather:\""

# Abbreviations for config files (cf*)
abbr cfa "vim $HOME/.config/alacritty/alacritty.yml"
abbr cffsh "vim $HOME/.config/fish/config.fish"
abbr cfi "vim $HOME/.config/i3/config"
abbr cfn "vim $HOME/.config/neofetch/config.conf"
abbr cfp "vim $HOME/.config/polybar/config"
abbr cfff "vim $HOME/dotfiles/firefox/.config/firefox/userChrome.css"
abbr cfv "vim $HOME/dotfiles/vim/.vimrc"
abbr cfr "vim $HOME/dotfiles/rofi/.config/rofi/config.rasi"
abbr cfs "vim $HOME/dotfiles/sxhkd/.config/sxhkd/sxhkdrc"   

# doas insults for fish
function doas
    /usr/bin/doas $argv # I'll never use any other flags of doas anywayso why not, also because $argv doesn't get the --
    if test "$status" = "1"
        fortune theo 1>&2; false
    else
        /usr/bin/doas $argv
    end
end
