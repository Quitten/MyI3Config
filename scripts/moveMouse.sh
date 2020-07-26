
# 
WHERE=$1

if [ "$WHERE" == "left" ]; then 
	echo "here"
	sudo evemu-event /dev/input/event22 --type 02 --code 00 --value -10 && sudo evemu-event /dev/input/event22 --type 00 --code 00 --value 00
fi

if [ "$WHERE" == "right" ]; then 
	echo "here"
	sudo evemu-event /dev/input/event22 --type 02 --code 00 --value 10 && sudo evemu-event /dev/input/event22 --type 00 --code 00 --value 00
fi

if [ "$WHERE" == "down" ]; then 
	echo "here"
	sudo evemu-event /dev/input/event22 --type 02 --code 01 --value 10 && sudo evemu-event /dev/input/event22 --type 00 --code 00 --value 00
fi

if [ "$WHERE" == "up" ]; then 
	echo "here"
	sudo evemu-event /dev/input/event22 --type 02 --code 01 --value -10 && sudo evemu-event /dev/input/event22 --type 00 --code 00 --value 00
fi


# WINDOW=""
# MOUSEDATA=$(xdotool getmouselocation)
# echo $MOUSEDATA
# for word in $MOUSEDATA
# do
#     KEY=$(cut -d ":" -f1 <<< $word)
#     # echo "KEY: $KEY"
#     if [ $KEY == "x" ]; then
# 	  X=$(cut -d ":" -f2 <<< $word)
# 	fi
# 	if [ $KEY == "y" ]; then
# 	  Y=$(cut -d ":" -f2 <<< $word)
# 	fi
# 	if [ $KEY == "window" ]; then
# 	  WINDOW=$(cut -d ":" -f2 <<< $word)
# 	  # echo $WINDOW
# 	fi
# done

# if [ $WHERE == "up" ]; then 
# 	# echo $WINDOW $X $Y
# 	eval `xdotool getwindowgeometry --shell $WINDOW`

#     NX=`expr $WIDTH / 2`
#     NY=`expr $HEIGHT / 2`
    
#     echo $NX $NY
#     echo $X $Y

# 	xdotool mousemove --window $WINDOW $((X-960)) $((Y+532+100))
	
# 	echo "xdotool mousemove --window $WINDOW $((X-960)) $((Y+532+100))"
# fi
# # echo $X
# # echo $Y