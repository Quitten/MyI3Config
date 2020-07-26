# SCREENUM=$(xrandr | grep ' connected' | wc | awk '{print $1}')
# echo $SCREENUM
# if [ $SCREENUM -eq 1 ]; then
# 	GDK_DPI_SCALE=0.5 GDK_SCALE=2 chromium
# else
	GDK_DPI_SCALE=0 GDK_SCALE=1 chromium
# fi
# chromium