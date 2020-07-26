#!/bin/bash

TMP_WP_LOCATION=~/.ccwp.jpg
FEH_CFG_LOCATION=~/.fehbg
CURL_CMD="curl -s"

# Selects a random wallpaper from the Chromecast feed
html_page=$($CURL_CMD https://clients3.google.com/cast/chromecast/home)
# needs to validate that we have a valid response!!!
if [[ "$html_page" == "" ]]
	then
		echo "not internet connection";
		exit
fi

json_wallpapers=$(sed -nr "s/.+JSON\.parse\('(.+?)\\\n'\).+/\1/p" <<< $html_page)
clean_json=$(xargs -0 echo -e <<< $json_wallpapers)
wallpaper_list=$(jq -r '.[0][] | .[0]' <<< $clean_json)
random_wp_list=$(sort -R <<< $wallpaper_list)
random_wallpaper=$(head -n1 <<< $random_wp_list | cut -d " " -f1)

# Select a higher quality wallpaper (the default for Chromecasts is a downscaled version)
quality_wp=$(sed -e "s/s1280-w1280-h720/s1920-w1920-h1200/" <<< $random_wallpaper)
echo "$CURL_CMD $quality_wp -o $TMP_WP_LOCATION"
# Download the wallpaper to a temporary location
$CURL_CMD $quality_wp -o $TMP_WP_LOCATION

# Set the downloaded image as the system wallpaper
# echo "swaymsg output * bg $TMP_WP_LOCATION"
swaymsg output "*" bg $TMP_WP_LOCATION stretch
printf "#!/bin/sh\nfeh --bg-fill '$TMP_WP_LOCATION'\n" > $FEH_CFG_LOCATION
sh ~/.fehbg