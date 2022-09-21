#!/bin/bash

echo '
[g14]
SigLevel = DatabaseNever Optional TrustAll
Server = https://arch.asus-linux.org' | sudo tee -a /etc/pacman.conf
sudo pacman -Sy --noconfirm redshift tlp bleachbit electronmail-bin flameshot-git kotatogram-desktop-bin noisetorch-git protonvpn-gui whatsie-git webcord-git libnetfilter_queue libappindicator-gtk3 linux-g14 linux-g14-headers
paru backintime
paru pdfarranger
paru nyrna
paru touchpad-indicator
paru xclicker
cp /usr/lib/firedragon/firedragon.overrides.cfg ~/.firedragon/firedragon.overrides.cfg
echo 'UPDATE_AUR=1
PACMAN_NOCONFIRM=1' | sudo tee /etc/garuda/garuda-update/config
echo '[redshift]
temp-day=6500
temp-night=4000
fade=1
dawn-time=6:00-7:00
dusk-time=17:30-18:00' > ~/.config/redshift.conf
echo 'CPU_SCALING_GOVERNOR_ON_AC=powersave
CPU_SCALING_GOVERNOR_ON_BAT=powersave
PLATFORM_PROFILE_ON_AC=balanced
PLATFORM_PROFILE_ON_BAT=quiet
USB_AUTOSUSPEND=0
START_CHARGE_THRESH_BAT0=0
STOP_CHARGE_THRESH_BAT0=60
START_CHARGE_THRESH_BAT1=0
STOP_CHARGE_THRESH_BAT1=60
RESTORE_THRESHOLDS_ON_BAT=1' | sudo tee -a /etc/tlp.conf
mv ~/.bashrc_garuda ~/.bashrc
rm ~/.config/autostart/bashrc-setup.desktop
rm ~/.config/autostart/initial-user-setup.desktop
mkdir -p ~/Git
cd ~/Git
git clone https://github.com/safing/portmaster-packaging
cd portmaster-packaging/linux
makepkg -is
sudo systemctl daemon-reload
sudo systemctl enable --now portmaster
sudo cp /opt/safing/portmaster/portmaster_notifier.desktop ~/.config/autostart/'
