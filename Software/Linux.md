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

# 3. paru (git the better)

```
sudo pacman -S bleachbit
sudo pacman -S electronmail-bin
sudo pacman -S flameshot-git
sudo pacman -S kotatogram-desktop-bin
sudo pacman -S noisetorch-git
sudo pacman -S protonvpn-gui
sudo pacman -S whatsie-git
sudo pacman -S webcord-git
```
```
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
