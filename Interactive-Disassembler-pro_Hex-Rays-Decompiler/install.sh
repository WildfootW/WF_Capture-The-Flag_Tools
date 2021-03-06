#!/bin/bash
#   Version 
#   Author: WildfootW
#   GitHub: github.com/Wildfoot
#   Copyright (C) 2018 WildfootW All rights reserved.
#

# Absolute path to this script, e.g. /home/user/Pwngdb/install.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/Pwngdb
SCRIPTPATH=$(dirname "$SCRIPT")

if [ "$1" = "" ]; then
    echo "usage: ./install [IDA-folder-name]"
    exit
fi

IDA_folder="$SCRIPTPATH/$1"
BIN_folder="$SCRIPTPATH/../bin/"

chmod 755 "$IDA_folder/ida.exe"
chmod 755 "$IDA_folder/ida64.exe"

echo "wine $IDA_folder/ida.exe" > "$BIN_folder/ida-x32"
echo "wine $IDA_folder/ida64.exe" > "$BIN_folder/ida-x64"

chmod 755 "$BIN_folder/ida-x32"
chmod 755 "$BIN_folder/ida-x64"
