# dotfiles

    beerpsi's dotfiles
    ------------------
    uses GNU Stow - https://www.gnu.org/software/stow/
    
    Usage 
    cd ~
    git clone https://github.com/beerpsi/dotfiles.git
    stow <config you want to use>
      ex: stow polybar, stow i3...
      
 ![](https://cdn.discordapp.com/attachments/290312423309705218/735492972308594718/unknown.png)
     
# I accidentally blew away my config!

`lsof | grep "/path/to/some/config"`

It'll give you some output like `progname 5383 user 22r REG 8,1 16791251 265368 /path/to/config/file` according to this post you need to take note of the PID in the second column, and the file descriptor number in the fourth column. Using this information you can recover the file by issuing the command: `cp /proc/5383/fd/22 /path/to/restored/file`

# TODO: 

- [ ] Get FontAwesome v4.7.0 in my .fonts folder (source https://github.com/FortAwesome/Font-Awesome/archive/v4.7.0.tar.gz)
