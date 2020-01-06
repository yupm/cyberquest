## Solution for Grunt 3

The file is filled with randomly generated words.

### To get the flag

Soultion 1: Use 'less' command and slowly scroll through every line.

```
less data.txt
```

Solution 2: Use 'cat' command and pipe it through a 'grep' command

```
cat data.txt | grep {
```

As our passwords always start with a { , using it as a grep condition will bring the line of text with the next password.

## Flag

```
{SPEED_OF_LIGHT}
```
