echo "asd"
WHERE=$1

CW=$(swaymsg -t get_outputs | jq -r '.[] | select(.focused)' | jq -r '.current_workspace')
swaymsg workspace $(($CW+1))
if [ "$WHERE" == "next" ]; then
	swaymsg workspace $(($CW+1))
fi

if [ "$WHERE" == "back" ]; then
	swaymsg workspace $(($CW-1))
fi

