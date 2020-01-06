## Solution for Grunt 6

This level teaches the student to use compression methods and reversing of hexdump file.

### How to get the flag
First use hexdump command 'xxd'
```
xxd -r dataGrunt6.txt > data
```
Then use 7zip command '7z'
```
7z e data 
```
Then use tar command 'tar'
```
tar xvf arbok.bin
```
Then use bzip2 command 'bzip2'
```
bzip2 -d koffing.bin.bz2
```
Then use tar command 'tar'
```
tar xvf koffing.bin
```
Then use gunzip command 'gunzip'
```
gunzip meowth.gz
```
Then to find the flag
```
cat meowth
```

## Flag
```
{OH_THANKS_MEOWTH}
```
