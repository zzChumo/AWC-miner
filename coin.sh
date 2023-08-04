#!/bin/bash
#(c) Copyright 2023 zzChumo<chumo@zzcm.fun>
#Enter your AWC account
ACC=
#Enter your AWC account's password
PWD=

#Now all the things are done. Never edit the code below.
touch c.json
curl -sd "account=$ACC&password=$PWD" https://coin.awa.ac.cn/api/v1/mine/create > c.json
HASH=$(cat c.json | jq .hash -r)
SALT=$(cat c.json | jq .salt -r)
ID=$(cat c.json | jq .id -r)
hashcat -a 3 -m 10 "$HASH:$SALT" "?d?d?d?d?d?d?d?d" --increment --increment-min 1 --increment-max 9 -O -o t.txt --outfile-format=2 > /dev/null
ANS=$(cat t.txt)
curl -sd "id=$ID&answer=$ANS" https://coin.awa.ac.cn/api/v1/mine/finish > e.json
BALANCE=$(cat e.json | jq .balance -r)
echo Balance: $BALANCE
rm -rf e.json
rm -rf t.txt
rm -rf c.json
