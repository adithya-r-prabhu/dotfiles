#            _____  _____  
#      /\   |  __ \|  __ \   
#     /  \  | |__) | |__) |  Adithya R Prabhu 
#    / /\ \ |  _  /|  ___/   github:https://github.com/adithya-r-prabhu
#   / ____ \| | \ \| |       
#  /_/    \_\_|  \_\_|       
# My Bash config. Not much to see here; just some pretty standard stuff.
                

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

### EXPORT    
export TERM="xterm-256color"                      # getting proper colors
export LC_CTYPE="en_IN.utf8"
export SXHKD_SHELL="/bin/bash"
# other variables like TERMINAL,BROWSER  are stored in      /etc/environment


# pacman and yay
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias yaysua='yay -Sua --noconfirm'              # update only AUR pkgs (yay)
alias yaysyu='yay -Syu --noconfirm'              # update standard pkgs and AUR pkgs (yay)
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'  # remove orphaned packages

# config file aliases
alias sht="code /home/$USER/.config/sxhkd/sxhkdrc"
alias ply="code /home/$USER/.config/polybar/config.ini" #open polybar config
alias rply="pkill -USR1 polybar"                      #reload polybar
# casual aliases
alias  p="python3"                                          # Python
alias cam="mpv av://v4l2:/dev/video0"			                  # CAMERA PREVIEW IN MPV
alias t="python3 /home/$USER/Scripts/classlinks_dmenu_vesion.py" #classes links dmenu
alias c="clear"                                             # Clear terminal 


###  SCRCpy and Droidcam setup 

## Arch-linux alias for droidcam and scrcpy setup (pipewire) also follow steps in pavucontrol given in droidcam website
# alias  a=" nohup droidcam & sleep 3 && nohup scrcpy" 

## automating the prompt(samsung) and also using droidcam cli (usb) by simulating clicks
alias a="scrcpy & sleep 3 &&  xdotool search --onlyvisible --any scrcpy key --window %@ Right Right Return && sleep 3 && droidcam-cli -v -a adb  4747"

## scrcpy and then connect ieifi is off and prevent miss clicks
alias aw="scrcpy & sleep 3 && droidcam-cli -v -a adb  4747"

#connect droidcam using usb with audio and video 
alias dva="droidcam-cli -v -a adb  4747"

## Ubuntu Debian alias for droidcam and scrcpy setup (pacmd)
#alias  a=" nohup droidcam & sleep 3 && echo attaching droidcam audio && pacmd load-module module-alsa-source device=hw:2,1,0 && nohup scrcpy"
 
# redshift
alias rc="redshift -x"
alias ra="redshift -O" #example redshift -O 4900

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

#list directory
alias ls="ls -a"
# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status'  # 'status' is protected name so using 'stat' instead
alias tag='git tag'
alias newtag='git tag -a'


# youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'




###to get neofetch on the first terminal in a workspace and  ...0  ||  ...1 is to avoid bugs##
[[ $(xtitle $(bspc query -N -d focused -n .window.\!hidden) |grep  Tilix |wc -l)  == 0 ]] ||  [[ $(xtitle $(bspc query -N -d focused -n .window.\!hidden) |grep  Tilix |wc -l)  == 1 ]] && neofetch 

###to get my name  #https://patorjk.com/software/taag/#p=testall&f=Doh&t=adithya%20###   
# cat << "EOF"
#            _ _       _                   
#           | (_)  _  | |                  
#  _____  __| |_ _| |_| |__  _   _ _____   
# (____ |/ _  | (_   _)  _ \| | | (____ |  
# / ___ ( (_| | | | |_| | | | |_| / ___ |  
# \_____|\____|_|  \__)_| |_|\__  \_____|  
#                           (____/                
# EOF

### RANDOM COLOR SCRIPT (distro tube)###
## gitlab https://gitlab.com/dwt1/shell-color-scripts ##
# Or install it from the Arch User Repository: yay -S shell-color-scripts 
# colorscript random

### SETTING THE STARSHIP PROMPT ###
#install by : sh -c "$(curl -fsSL https://starship.rs/install.sh)"
#customize promt by add starship.toml to .config
eval "$(starship init bash)"

