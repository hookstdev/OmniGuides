# I) Pre-Install

- ## ISO
Get iso from [builds.garudalinux.org](https://builds.garudalinux.org)

- ## Disk Management
Create the first partition to be 150 gigs (for Garuda) and then install in the remaining (for ReviOS).

# II) Post-Install

# First Steps

1. Close the setup assistant, Do these.

- ## Battery Threshold

```
sudo micro /etc/systemd/system/battery-charge-threshold.service 
```

```
[Unit]
Description=Set the battery charge threshold
After=multi-user.target
StartLimitBurst=0

[Service]
Type=oneshot
Restart=on-failure
ExecStart=/bin/bash -c 'echo 60 > /sys/class/power_supply/BAT?/charge_control_end_threshold'

[Install]
WantedBy=multi-user.target
```

```
systemctl start battery-charge-threshold.service
systemctl enable battery-charge-threshold.service
```

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
GRUB_DEFAULT=2 (edit)
GRUB_DISABLE_SUBMENU=y (uncomment)
```
grubup
```
# Reboot

# Run the bash files in `~/.config/autostart/`

# [Proceed](https://github.com/hookstdev/OmniGuides/blob/omni/Software/Linux.md)
