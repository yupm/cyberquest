## Solution for Grunt 7

This level is about finding hidden files in JPG and learning about file signature to correct the file type.

### To get the flag

'binwalk' command can be used to list the data in the JPG.

```
binwalk CatchMe.jpg
```

As listed, we can see there is zip file hidden in the JPG.
Similarly, 'binwalk' command can be used to extract the files in the JPG.

```
binwalk --dd=".*" CatchMe.jpg
```

Alternatively, 'dd' command can be used independently to extract the file.
'if' requires the file to be read
'skip' is to skip to a block number in decimal (can be seen by binwalk)
'of' is the name of the output file 

```
dd if=CatchMe.jpg skip=32679 bs=1 of=dataGrunt7.zip
```

The extracted file can then be uncompressed using 'unzip'.
A file 'flag.ppt' will be extracted.

```
unzip dataGrunt7.zip
```

As the file signature of the file is altered, the ppt could not be open properly.
To repair the ppt, a hex editor is required. For example, using https://hexed.it/?hl=en
To check the file signature, https://www.filesignatures.net/index.php?page=search&search=PPT&mode=EXT

```
Change the first 8 hexadecimal 'D0 CF 11 E0 A1 B1 1A E1' and save the file
```

When the repaired ppt is opened, the flag will not be visible.
The image have to be removed and if you highlight the whole slide, there is a text box visible.
Change the text colour to a visible colour and the flag will be revealed.

## Flag

```
{PROTECT_WORLD_PEACE}
```
