The string has been encoded twice with 2 different methods, base64 and ROT13.

We have to do ROT13, followed by base64 to get the plaintext back.

In order to translate our cipher back to plain text, we can either use a website like
    www.cryptii.com
to auto decode for us, or we can run the following commands in linux,

    cat .data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m' > new1.txt

    base64 -d new1.txt

After that, cat new1.txt for the plaintext.