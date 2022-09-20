# I) Pre-Install

- ## ISO
Get iso from [builds.garudalinux.org](https://builds.garudalinux.org)

# II) Install

- ## Date and Locale (India)

# III) Post-Install

# First Steps

1. Close the setup assistant, Do these.

- ## Linux Kernel
```
sudo micro /etc/pacman.conf
```
```
[g14]
SigLevel = DatabaseNever Optional TrustAll
Server = https://arch.asus-linux.org
```
alt-tab<br>ctrl+fn+end<br>ctrl+v<br>ctrl+s<br>ctrl+q<br>
```
sudo pacman -Sy
paru linux-g14
mv ~/.bashrc_garuda ~/.bashrc
rm ~/.config/autostart/bashrc-setup.desktop
rm ~/.config/autostart/initial-user-setup.desktop
```

# Reboot

# [Proceed](https://github.com/hookstdev/OmniGuides/blob/omni/Software/Linux.md)
