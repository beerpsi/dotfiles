function commit-if-diff
    set previous_wd $PWD
    cd $HOME/dotfiles
    if test (git diff | wc -l) = 0
        echo "beerpsi/dotfiles: all up to date"
    else
        git add .
        git commit -m "Automated commit"
        git push -u origin master
    end
    cd $previous_wd
end

# Welcome message
fortune | cowsay | lolcat

# Automated commit in case i forgot to commit my dots
commit-if-diff

# Add directory of scripts to PATH
set PATH "$HOME/.emacs.d/bin:$HOME/.cargo/bin:$HOME/Downloads/git/rofi-rbw/rofi_rbw:$HOME/.config/scripts:$PATH"

# set editor
set EDITOR "nvim"

# Fish abbreviated path disabled
set fish_prompt_pwd_dir_length 0

# Abbreviations for xbps-* (x*)
#abbr xi "doas -- xbps-install"
#abbr xr "doas -- xbps-remove"
#abbr xq "xbps-query"
#abbr xs "xbps-src"
#abbr xsi "doas -- xbps-install --repository ~/Downloads/git/void-packages/hostdir/binpkgs"
#abbr xsi-nonfree "doas -- xbps-install --repository ~/Downloads/git/void-packages/hostdir/binpkgs/nonfree"
#abbr xsq "ls ~/Downloads/git/void-packages/srcpkgs/ | grep"

# Misc. abbreviations
abbr la "ls -lhA"
abbr v "$EDITOR"
abbr vim "$EDITOR"
abbr theo "fortune theo"
abbr wttr "curl -sSL v2.wttr.in/Thu_Dau_Mot"
abbr wttr-lite "curl -sSL v2.wttr.in/Thu_Dau_Mot | grep \"Weather:\""
abbr d "doas"
abbr do "doas --"
abbr lunar-date "$HOME/.config/scripts/VietCalendar"


#abbr idle "zzz -S"
#abbr suspend "zzz -z"
#abbr hibernate "zzz -Z"
#abbr suspend-hybrid "zzz -H"

abbr edit "$EDITOR"

abbr pkg "yay"

abbr ytdl-music "youtube-dl --extract-audio --audio-format mp3 --output \"$HOME/Music/%(title)s.%(ext)s\""
abbr ytdl "youtube-dl"
abbr np "playerctl metadata --format \"{{ artist }} - {{ title }}\""

abbr among-us "DRI_PRIME=1 wine ~/Games/Among-Us/v2020.9.9s/Among\ Us.exe"
abbr osu-lazer "DRI_PRIME=1 ~/Games/osu-lazer/osu.AppImage"

abbr ardublockly "python3 ~/Downloads/git/ardublockly/start.py"

abbr external-monitor "xrandr --output HDMI1 --scale 0.711x0.711 --same-as eDP1"
# Abbreviations for config files (cf*)
abbr cfa "$EDITOR $HOME/.config/alacritty/alacritty.yml ;and commit-if-diff"
abbr cffsh "$EDITOR $HOME/.config/fish/config.fish ;and commit-if-diff; and source $HOME/.config/fish/config.fish"
abbr cfi "$EDITOR $HOME/.config/i3/config ;and commit-if-diff"
abbr cfn "$EDITOR $HOME/.config/neofetch/config.conf ;and commit-if-diff"
abbr cfp "$EDITOR $HOME/.config/polybar/config ;and commit-if-diff"
abbr cfff "$EDITOR $HOME/dotfiles/firefox/.config/firefox/userChrome.css ;and commit-if-diff"
abbr cfv "$EDITOR $HOME/dotfiles/vim/.vimrc ;and commit-if-diff"
abbr cfr "$EDITOR $HOME/dotfiles/rofi/.config/rofi/config.rasi ;and commit-if-diff"
abbr cfs "$EDITOR $HOME/dotfiles/sxhkd/.config/sxhkd/sxhkdrc ;and commit-if-diff"   
abbr cfnv "$EDITOR $HOME/dotfiles/nvim/.config/nvim/init.vim ;and commit-if-diff" 


# Launch an application using the dedicated GPU and disown the process
function dgpu
    DRI_PRIME=1 $argv &
end

# Torture test
function burn
    i3-msg workspace 2
    cd ~/Downloads/GpuTest/GpuTest_Linux_x64_0.7.0/
    DRI_PRIME=1 timeout $argv ./start_furmark_windowed_1024x640.sh &; disown    
    timeout $argv nohup ~/Downloads/Prime95/mprime -t &; disown
    timeout $argv alacritty -e watch -t -n 1 'sensors; lscpu | grep MHz' 
end

function makemousework
    xinput set-prop "Synaptics TM3253-001" "Coordinate Transformation Matrix" 5 0 0 0 5 0 0 0 0
    xinput set-prop "Synaptics TM3253-001" "libinput Accel Speed" 1
    xinput set-prop "Synaptics TM3253-001" "libinput Accel Profile Enabled" 0, 1
    xinput set-prop "Synaptics TM3253-001" "libinput Disable While Typing Enabled" 0
    xinput set-prop "Logitech G PRO Gaming Mouse" "libinput Accel Profile Enabled" 0, 1
end

function ayy
    echo "ayy lmao" | figlet | lolcat
end
