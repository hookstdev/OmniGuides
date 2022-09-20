# 1. Setup Assistant:

Printer<br>
Additional KDE Components<br>
AppImage Launcher<br>
Octopi<br>
LibreOffice Fresh<br>
Vivaldi<br>
ThunderBird<br>
VLC<br>
OBS Studio<br>
IntelliJ<br>
VirtualBox<br>

# 2. Portmaster:

```
sudo pacman -S --noconfirm libnetfilter_queue libappindicator-gtk3
mkdir -p ~/Git
cd ~/Git
git clone https://github.com/safing/portmaster-packaging
cd portmaster-packaging/linux
makepkg -is
sudo systemctl daemon-reload
sudo systemctl enable --now portmaster
sudo cp /opt/safing/portmaster/portmaster_notifier.desktop ~/.config/autostart/
```

# Reboot

# 3. git gud

```
sudo pacman -S --noconfirm tlp bleachbit electronmail-bin flameshot-git kotatogram-desktop-bin noisetorch-git protonvpn-gui whatsie-git webcord-git
paru backintime
paru pdfarranger
paru nyrna
paru touchpad-indicator
paru xclicker
sudo pacman -R linux-zen linux-zen-headers
sudo micro /etc/default/grub
```
GRUB_DEFAULT=0 (edit)<br>
#GRUB_DISABLE_SUBMENU=y (comment)
```
cp /usr/lib/firedragon/firedragon.overrides.cfg ~/.firedragon/firedragon.overrides.cfg
```

# [Proceed](https://github.com/hookstdev/OmniGuides/blob/omni/OS/Android/nqmido.md)
