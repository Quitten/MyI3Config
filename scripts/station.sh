DIR=~/Downloads/
STATIONSTR="Station-"
RES=$(ls $DIR | grep -oP "(?<=$STATIONSTR).*(?=-x86_64.AppImage)")
RES=$(echo $RES | awk '{print $NF}')
FILE=$(ls $DIR | grep $STATIONSTR$RES-x86_64.AppImage)
echo $FILE
~/Downloads/$FILE