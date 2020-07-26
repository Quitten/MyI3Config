# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

volume_number=$(~/scripts/volume.sh)

# Public IP
pubic_IP=$(dig +short myip.opendns.com @resolver1.opendns.com)

# Current keyboard layout (Language)
current_lang=$(setxkbmap -query | grep layout | awk '{print $2}')

# Produces "21 days", for example
uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %d-%m-%Y %H:%M:%S")

# Get the Linux version but remove the "-1-ARCH" part
linux_version=$(uname -r | cut -d '-' -f1)

# Returns the battery status: "Full", "Discharging", or "Charging".
battery_status=$(cat /sys/class/power_supply/BAT0/status)
battery_percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage:/ {print $2}')
battery=$(echo $battery_status $battery_percentage)

WIFI=$(iw dev wlp2s0 link | grep SSID | cut -d " " -f 2-)

# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|
# echo $uptime_formatted ↑ $linux_version 🐧 $battery_status 🔋 $date_formatted
echo  $WIFI $volume_number 🌍 $pubic_IP 🔋 $battery  $current_lang  $date_formatted

