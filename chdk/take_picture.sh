#!/bin/sh
# to use the GUI build from a binary package that includes both CLI and GUI change to chdkptp_gui
CHDKPTP_EXE=chdkptp
# path where chdkptp is installed
CHDKPTP_DIR=/root/chdkptp
export LUA_PATH="$CHDKPTP_DIR/lua/?.lua"
NOW=$(date +"%d-%m-%Y_%T")
echo $NOW
"$CHDKPTP_DIR/$CHDKPTP_EXE" -i -c -e"rec" -e"rs temp" & 
pid_chdkptp=$!
wait
mv temp.jpg /mnt/data/$NOW.jpg