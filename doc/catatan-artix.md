#Post install

## Run general service
* NetworkManager
* bluetoothd
* cups
* lightdm

display server
pacman -S xf86-video-amdgpu xorg --ignore xorg-server-xdmx xorg-xinput lightdm lightdm-gtk-greeter lightdm-runit

arch repo
pacman -S artix-archlinux-support

### window manager
pacman -S i3-gaps rxvt-unicode i3blocks
#### add dbus-launch to xsession

### Aur Helper
##### dep
* git
[paru](https://github.com/Morganamilo/paru#installation)

### disable beep
[forum.artixlinux.org](https://forum.artixlinux.org/index.php/topic,1255.msg8866.html#msg8866)

### file manager
paru -S thunar gvfs tumbler thunar-volman thunar-archive-plugin thunar-media-tags-plugin ntfs-3g lf-bin ueberzug
[lfimg](https://github.com/cirala/lfimg.git)

### brightness control
sudo pacman -S brightnessctl

### policy kit
paru -S xfce-polkit
#### simlink
/usr/lib/xfce-polkit/xfce-polkit

### fonts
* FiraCode Nerd Font
* JetBrainsMono Nerd Font
* Font-Awesome
* ttf-joypixels

#### optional 
paru -S libxft-bgra

### browser
paru -S brave-bin
#### hosts
[hosts](https://raw.githubusercontent.com/bebasid/bebasid/master/releases/hosts)

### install sound
pacman -S alsa-utils pulseaudio pulseaudio-alsa pulseaudio-bluetooth pavucontrol pamixer
pulseaudio --check; pulseaudio --kill; pulseaudio --start

### wallapaper manager
pacman -S xwallpaper
xwallpaper --zoom ~/pic/Wallpapers/bg.jpg

### shell
pacman -S zsh
[powerlevel10k](https://github.com/romkatv/powerlevel10k#manual)
[fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting#installation)
[autosuggestion](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone)
chsh -s /bin/zsh

### utilities
pacman -S xclip lxappearance gcolor2 xdotool galculator gtk-engine-murrine xarchiver arj cpio lha lrzip lzop p7zip unarj unrar unzip zip man

### social media
pacman -S discord telegram-desktop

### scree recording
pacman -S obs-studio

### development
pacman -S nodejs npm ripgrep fd

### Text/Code Editor

### media
pacman -S mpv yt-dlp

### Downloader
pacman -S aria2c

### clipboard manager
[greenclip](https://github.com/erebe/greenclip)

### image viewer
pacman -S sxiv

### minecraft
paru -S minecraft-launcher gnome-keyring

### cronjob utilities
pacman -S cronie cronie-runit

### Grub
[save default](https://www.maketecheasier.com/set-grub-remember-last-selection/#:~:text=After%20editing%20the%20grub%20file,Ctrl%20%2B%20x%E2%80%9D%20to%20exit)
GRUB_SAVEDEFAULT=true
GRUB_DEFAULT=saved
`#update-grub`
