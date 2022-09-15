# 1. Setup Assistant:
System Update: Yes

### Post-Install
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
sudo pacman -S bleachbit --noconfirm 
sudo pacman -S electronmail-bin --noconfirm
sudo pacman -S flameshot-git --noconfirm 
sudo pacman -S kotatogram-desktop-bin --noconfirm 
sudo pacman -S noisetorch-git --noconfirm 
sudo pacman -S protonvpn-gui --noconfirm 
sudo pacman -S whatsie-git --noconfirm 
sudo pacman -S webcord-git --noconfirm 
paru backintime
paru pdfarranger
paru nyrna
paru touchpad-indicator
paru xclicker
```

# 4. Set up ALL of the apps

```
cp /usr/lib/firedragon/firedragon.overrides.cfg ~/.firedragon/firedragon.overrides.cfg
```

# [Proceed](https://github.com/hookstdev/OmniGuides/blob/omni/OS/Android/nqmido.md)
