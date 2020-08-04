pacman -S dhcp networkmanager libinput libinput-gestures waybar sway awesome-fonts xwininfo oh-my-zsh pulseaudio ifconfig pavucontrol pamixer glances alacritty dunst feh jq pulseaudio volnoti ydotool npm python3 python-pip light acpid docker docker-compose

pip3 install gitlab --user

ydotool sudo:
sudo gpasswd -a barak input
sudo usermod -a -G users barak
echo "KERNEL==\"uinput\", GROUP=\"users\", MODE=\"0660\", OPTIONS+=\"static_node=uinput\"" | sudo tee /etc/udev/rules.d/80-uinput.rules > /dev/null

/etc/udev/rules.d/backlight.rules
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="intel_backlight", RUN+="/bin/chgrp users /sys/class/backlight/%k/brightness"
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="intel_backlight", RUN+="/bin/chmod g+w /sys/class/backlight/%k/brightness"


/sys/class/backlight/intel_backlight/brightness
/etc/acpi/handlers/
https://wiki.archlinux.org/index.php/Acpid#Enabling_backlight_control

ulauncher extensions:
cd ~/.cache/ulauncher_cache/extensions/
git clone https://github.com/isacikgoz/ukill.git
ulauncher-notes
chrome-tabs
