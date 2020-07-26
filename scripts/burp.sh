ps aux | grep -i "java -jar .*burp.*jar$" | wc -l
cd ~/softwares/burpsuite/
BURPSTR="burpsuite_pro_v2020."
RES=$(ls ~/softwares/burpsuite/ | grep -oP "(?<=$BURPSTR).*(?=.jar)")
RES=$(echo $RES | awk '{print $NF}')
BURPJAR=$(ls ~/softwares/burpsuite/ | grep $BURPSTR$RES)
echo $BURPJAR

/usr/lib/jvm/java-9-jre/jre/bin/java -jar ~/softwares/burpsuite/$BURPJAR
# SCREENUM=$(xrandr | grep ' connected' | wc | awk '{print $1}')
# echo $SCREENUM
# if [ $SCREENUM -eq 1 ]; then
# 	GDK_DPI_SCALE=1 GDK_SCALE=2 /usr/lib/jvm/java-9-jre/jre/bin/java -jar ~/softwares/burpsuite/$BURPJAR
# else
# 	GDK_DPI_SCALE=0 GDK_SCALE=1 /usr/lib/jvm/java-9-jre/jre/bin/java -jar ~/softwares/burpsuite/$BURPJAR
# fi

