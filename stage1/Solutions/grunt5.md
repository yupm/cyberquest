## Solution for Grunt 5

The string has been encoded twice with 2 different methods, base64 and ROT13.

### To get the flag

Use ROT13 and decode the text in the file

```
cat .data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m' > new1.txt
```

Then use Base64 to decode the text in the file

```
base64 -d new1.txt
```

After that, cat new1.txt for the plaintext.

```
cat new1.txt
```

Alternatively, we can use a website like www.cryptii.com

## Flag

```
{ITS_A_SNORLAX}
```
