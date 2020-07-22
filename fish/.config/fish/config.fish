# Welcome message
fortune | cowsay | lolcat

# Add directory of scripts to PATH
set PATH "$HOME/Downloads/git/void-packages:$HOME/.config/scripts:$PATH"


# Abbreviations for xbps-* (x*)
abbr xi "doas -- xbps-install"
abbr xr "doas -- xbps-remove"
abbr xq "xbps-query"
abbr xs "xbps-src"
abbr xsi "doas -- xbps-install --repository ~/Downloads/git/void-packages/hostdir/binpkgs"
abbr xsi-nonfree "doas -- xbps-install --repository ~/Downloads/git/void-packages/hostdir/binpkgs/nonfree"
abbr xsq "ls ~/Downloads/git/void-packages/srcpkgs/ | grep"

# Misc. abbreviations
abbr ls "ls -lhA"
abbr doas "doas --"

# Abbreviations for config files (cf*)
abbr cfa "vim $HOME/.config/alacritty/alacritty.yml"
abbr cffsh "vim $HOME/.config/fish/config.fish"
abbr cfi "vim $HOME/.config/i3/config"
abbr cfn "vim $HOME/.config/neofetch/config.conf"
abbr cfp "vim $HOME/.config/polybar/config"
abbr cfff "vim $HOME/dotfiles/firefox/.config/firefox/userChrome.css"
abbr cfv "vim $HOME/dotfiles/vim/.vimrc"
abbr cfr "vim $HOME/dotfiles/rofi/.config/rofi/config.rasi"
    
