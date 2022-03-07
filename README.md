<!-- # **My Linux configuration/ Dotfiles** -->
<!-- ![dotfiles](RepoFiles/Header.png) -->

<img src="https://user-images.githubusercontent.com/83577193/151350521-8ada51ca-da37-4ce7-9619-6135d77347f5.png" alt="Header" style="width:100%;"/>

 ## environment variables stored in 
``` 
 ~/.bashrc
 
 /etc/environment
 ```
 
>**This Readme is contains My dot files and also**







> **This Readme is contains some Tweaks/Modifications/Issues/Fixes to my Linux Setup**

## Table of Contents
- [Custom Terminal prompt](#Custom-Terminal-prompt)
- [Terminal Colour Schemes](#Terminal-Colour-Schemes)
- [Terminal ascii art random](#Terminal-ascii-art-random)
- [Flameshot flatpak shortcut fix](#Flameshot-flathub-Keyboard-shortcut-Fix)
- [Fix-donglemouse-issue-linux](#Fix-donglemouse-issue-linux)
- [Fix tearing for nvidia gpu](#Fix-tearing-in-nvidia-gpu)
- [Emoji fix for arch linux browsers](#Emoji-fix-for-arch-linux-browsers)
- [Firefox Gnome Theame](#Firefox-Gnome-Theame)
- [Fluent reader/rss reader](#Fluent-reader-rss-reader)
- [Vscode option to nautilus file manager ](#Add-open-with-vscode-option-to-nautilus-file-manager)
- [Vscode Font not Displayed correctly](#Vscode-Font-not-Displayed-correctly)
- [Syntax Highlighting Nano Text Editor](#Syntax-Highlighting-Nano-Text-Editor)
- [Audio visulizer in terminal](#Audio-visulizer-in-terminal-cava)
- [Fix X shaped cursor bspwm](#Fix-X-shaped-cursor-bspwm)
- [Volume changer in terminal](#Volume-changer-in-terminal)
- [Edge stable on arch](#Edge-stable-on-arch)
- [~/cache in memory and not in ssd](#~/cache-in-memory-and-not-in-ssd)



## Custom Terminal prompt 
### Synth-shell prompt
![image](https://user-images.githubusercontent.com/83577193/148920101-29875d18-fcf2-406a-937e-243b9c2fc034.png)
```
 wget https://raw.githubusercontent.com/ChrisTitusTech/scripts/master/fancy-bash-promt.sh -O .bashrc
```
#### Reference
https://github.com/andresgongora/synth-shell

https://github.com/ChrisTitusTech/scripts/blob/master/fancy-bash-promt.sh

### Starship prompt
![image](https://user-images.githubusercontent.com/83577193/148925780-fe7a757e-2d07-478a-a105-84ad8f18b6ad.png)
#### Reference
https://starship.rs/

https://gitlab.com/dwt1/dotfiles/-/blob/master/.config/starship.toml

## Terminal Colour Schemes
![image](https://user-images.githubusercontent.com/83577193/149651344-e2e02285-e515-42bc-8865-7538cfea7acf.png)

```
bash -c  "$(wget -qO- https://git.io/vQgMr)" 
```
#### Reference 
https://mayccoll.github.io/Gogh/


## Terminal ascii art random
![image](https://user-images.githubusercontent.com/83577193/150839718-d210ef53-252f-468b-a9d4-5549c2ea11c3.png)

https://github.com/adithya-r-prabhu/Shell-Color-Scripts-

install by
```
yay -S shell-color-scripts
```
## Flameshot flathub Keyboard shortcut Fix

```
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=flameshot org.flameshot.Flameshot gui --delay 0
```
![image](https://user-images.githubusercontent.com/83577193/143161345-268886d1-5172-4004-b87e-e9e7a7ce14f0.png)

## Fix-donglemouse-issue-linux
![dongle mouse](https://user-images.githubusercontent.com/83577193/149665278-4b2fc5bc-9b69-4996-ba45-137bde6a5d47.png)

https://github.com/adithya-r-prabhu/Fix-donglemouse-issue-linux

## Fix tearing in nvidia gpu

![image](https://user-images.githubusercontent.com/83577193/147942201-5dae9673-ca3d-4223-b7af-7c8a5d6ed8a4.png)

> turn off "allow flipping option
---

another fix 

![image](https://user-images.githubusercontent.com/83577193/151757399-380ee039-a883-49e6-a2e9-61d63d32dc58.png)

turn of all of that

Run

```sudo nvidia-xconfig -o /etc/X11/xorg.conf.d/20-nvidia.conf```

Add the following line to your this ```/etc/X11/xorg.conf.d/20-nvidia.conf``` file  with ``sudo`` in the Section "Screen" section:

```Option "ForceFullCompositionPipeline" "On"```

Like 

![image](https://user-images.githubusercontent.com/83577193/151757798-ddb9abf4-b898-4a0c-b4d9-8498368da086.png)

#### Reference

https://www.reddit.com/r/archlinux/comments/p9755r/rtx_3070_screen_tearing_during_youtube_videos/

## Emoji fix for arch linux browsers
![image](https://user-images.githubusercontent.com/83577193/149657267-ed2b378c-1500-48e9-9ad1-f232b352f908.png)


```sudo pacman -S noto-fonts-emoji```

## Firefox Gnome Theame
![image](https://user-images.githubusercontent.com/83577193/148946163-5b3c931e-5beb-44cc-892a-6d46d1aa51e0.png)

https://github.com/rafaelmardojai/firefox-gnome-theme
```
curl -s -o- https://raw.githubusercontent.com/rafaelmardojai/firefox-gnome-theme/master/scripts/install-by-curl.sh | bash
```
## Fluent reader rss reader
![image](https://user-images.githubusercontent.com/83577193/148998860-fb5d8976-bf2a-4d99-8866-f12ea3a202f6.png)
```
yay -S fluent-reader
```
## Add open with vscode option to nautilus file manager 
![image](https://user-images.githubusercontent.com/83577193/149529665-4e73c6c8-af48-4919-bdf2-646cf008bb9f.png)
```
wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh | bash
```
#### References
https://github.com/harry-cpp/code-nautilus

## Vscode Font not Displayed correctly
move font to ```/usr/share/fonts/TTF```
Then add the name of the font (by looking in the gnone fonts's info page) into the fonts settings inside of vs code

![image](https://user-images.githubusercontent.com/83577193/151371983-b029e2aa-ffa0-4991-80e2-ab9b3ed6b238.png)

format :```'IosevkaTermNerd'```

## Syntax Highlighting Nano Text Editor
![image](https://user-images.githubusercontent.com/83577193/149657643-499e9959-59ca-47ab-b087-f3b1c89a3c42.png)

_**Installation**_: 

using **curl** :```curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh``` 

or using **wget** :```wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh```

Or else Use the **Arch package** :```pacman -S nano-syntax-highlighting```

#### References
https://github.com/scopatz/nanorc

## Audio visulizer in terminal cava

![image](https://user-images.githubusercontent.com/83577193/151305488-8224d1b6-650f-42bf-8684-4aa7723015b6.png)

```cli-visualiser or  cava```

## Volume changer in terminal

![image](https://user-images.githubusercontent.com/83577193/151826717-f4cbec3e-c36f-4008-a555-2f6519d2be72.png)

```pulsemixer```

## Edge stable on arch

use 

https://github.com/zicstardust/microsoft-egde-stable-bin-aur

```
git clone https://github.com/zicstardust/microsoft-egde-stable-bin-aur.git

cd microsoft-egde-stable-bin-aur

makepkg -si
```

## System monitor
![image](https://user-images.githubusercontent.com/83577193/156818794-ba50222f-32ab-46e6-88a6-4a371f497357.png)

```yay -S system-monitoring-center```

## ~/cache in memory and not in ssd
![image](https://user-images.githubusercontent.com/83577193/157086332-3616d936-e00a-42e5-b714-061416ab05a8.png)
```
tmpfs /home/[user]/.cache tmpfs nodev,nosuid,size=2G 0 0
```
#### add this to ``` /etc/fstab``` and comment the existing one
