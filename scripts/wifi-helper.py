import os,re
wifiList = os.popen("nmcli device wifi list").read().split("\n")
for i, line in enumerate(wifiList, start=0):
    print("{}: {}".format(i, line))
num = int(input("\nplease choose which one to connect:\n"))
choseLine=wifiList[num]
ssid=re.findall(r"[A-Z0-9]+:[A-Z0-9]+:[A-Z0-9]+:[A-Z0-9]+:[A-Z0-9]+:[A-Z0-9]+", choseLine)[0]
print("Connecting to {}".format(ssid))
os.system("nmcli device wifi connect \"{}\"".format(ssid))
