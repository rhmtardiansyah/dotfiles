# Catatan Arch Linux

## Disable beep

```
rmmod pcspkr
blacklist pcspkr
```

### enable os-prober and fix grub

```
#nvim /etc/default/grub
GRUB_DEFAULT=saved
GRUB_SAVEDEFAULT=true
GRUB_DISABLE_OS_PROBER=false
```

## install yay

```
pacman -S ---needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

Enable color

## Install display server

pacman -S xorg xorg-xinit

## Launcher app

pacman -S rofi

## Browser

pacman -S brave-bin

## Brighness control

pacman -S brighnessctl
sudo usermod -aG video rahmat

## font

[FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)
yay -S ttf-joypixels noto-fonts-cjk noto-fonts

## shell

pacman -S zsh
[powerlevel10k](https://github.com/romkatv/powerlevel10k)
`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git`
[fast syntax highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
`git clone https://github.com/zdharma-continuum/fast-syntax-highlighting`
[autosuggestion](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
`git clone https://github.com/zsh-users/zsh-autosuggestions`

## wallaper

pacman -S xwallpaper

## utilities

pacman -S ntfs-3g xcape wget lxappearance yt-dlp pacman-contrib htop time ueberzug highlight bat

## compositor

pacman -S xcompmgr

## Clipboard Manager

[greenclip](https://github.com/erebe/greenclip)

## Social

pacman -S discord telegram-desktop

## Sound

pacman -S pamixer pulseaudio-alsa pulsemixer
[noice cancellation](https://wiki.archlinux.org/title/PulseAudio#Microphone_echo/noise_cancellation)

## video recorder

pacman -S obs-studio

## Editor

[VSCode](https://code.visualstudio.com/)
[Neovim](https://github.com/rahmatardiansyah/nvimrc.git)

## File Manager

pacman -S ranger gvfs tumbler thunar-volman thunar-archive-plugin thunar-media-tags-plugin

## Development

yay -S nvm jdk8-openjdk
pacman -S docker docker-compose
[node](https://www.ubuntupit.com/how-to-install-node-version-manager-tool-nvm-on-linux-system/)

## Video Player

pacman -S mpv

## Image Viewer
pacman -S sxiv

## language server

pacman -S lua-language-server
