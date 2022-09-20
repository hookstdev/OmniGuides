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
sudo micro /etc/default/grub
```
GRUB_DEFAULT=2 (edit)<br>
GRUB_DISABLE_SUBMENU=y (uncomment)
```
grubup
```
# Run the .desktop files in `~/.config/autostart/`
```
sudo pacman --noconfirm -S dex
dex <files>
```

# Reboot

# [Proceed](https://github.com/hookstdev/OmniGuides/blob/omni/Software/Linux.md)
