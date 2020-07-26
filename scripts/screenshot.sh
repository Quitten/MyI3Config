fileName=$(date +'%Y-%m-%d-%H%M%S_grim.png')
slurpRes=$(slurp)

grim -g "$slurpRes" /tmp/$fileName
wl-copy < /tmp/$fileName