#!/bin/sh

PASS="{OH_THANKS_MEOWTH}"

#Creating Pass file
echo $PASS >> meowth.txt
#Gzip 
gzip meowth.txt
#tar
tar cvf koffing.bin meowth.gz
#bzip2
bzip2 koffing.bin
#tar
tar cvf arbok.bin koffing.bin.bz2
#7zip
7z a wobbuffet arbok.bin
#Create hexdumo
xxd wobbuffet.7z > dataGrunt6.txt