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
sudo pacman -S --noconfirm bleachbit electronmail-bin flameshot-git kotatogram-desktop-bin noisetorch-git protonvpn-gui whatsie-git webcord-git
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
