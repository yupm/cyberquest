## Solution for Grunt 13 #

This challenge has 4 files in place.

1) plaintext.txt - text that has been encoded with Vigenere Cipher
2) cipher.txt - plaintext.txt that has been encoded with Caesar cipher
3) password.txt - our password that has been encoded with both Vigenere and Caesar Cipher.
4) image.png - an image of the Vignere Cipher table, a hint that Vignere Cipher is used.

Every encoding that was done uses the same settings.

Deciphering plaintext.txt and cipher.txt's shifting will allow you to shift password.txt back 1 cipher.

In image.png, "The key is this TV series" indicates that the key for Vigenere Cipher is pokemon.

### To get the flag

With all these clues in place, lets try solving this without using websites like www.cryptii.com

1) Decipher plaintext.txt and cipher.txt shifting

    Plaintext.txt
        Jgo xtwf ic pmzr gws zeegjdfn. Epfvpb gmxz ot kkmfwav

    cipher.txt
        Dai rnqz cw jgtl aqm tyyadxzh. Yjzpjv agrt in eegzqup

    Once you slowly count every letter shifting, you will realise that every letter is shifted by 20 positions.
        Therefore, Caesar Cipher was used with 20 shifts


2) Shift password.txt back

    password.txt
        Fm lybm hazmtkl hc i kws. Tvxs, xfkzl ra {KWS_TLJLIP_GLYRIR}

    After shifting 20 positions
        Ls rehs ngfszqr ni o qcy. Zbdy, dlqfr xg {QCY_ZRPROV_MREXOX}


3) Creating the Vigenere table for substitution

    We know that the key is pokemon and the cipher text to get back the pass word is 
        Ls rehs ngfszqr ni o qcy. Zbdy, dlqfr xg {QCY_ZRPROV_MREXOX}
    
    Now we have to lay the letters of the key and the cipher text on top of each other to compare with the vignere cipher table, in order to decode the cipher back to plaintext

        L s r e h s n g f s z q r n i o q c y. Z b d y, d l q f r x g  {Q C Y _ Z R P R O V _ M R E X O X}
        p o k e m o n p o k e m o n p o k e m  o n p o  k e m o n p o   k e m   o n p o k e   m o n p o k

        W e h a v e a r r i v e d a t a g y m. L o o k, t h e r e i s  {G Y M _ L E A D E R _ A D R I A N}

    After finding every corrosponding letter using the table, we got the password.
        Reference:  https://crypto.interactive-maths.com/vigenegravere-cipher.html

    Another way is to use www.cryptii.com, which is kinda the lame way.

    It does not matter if Vigenere Cipher or Caesar Cipher is being decoded first, the password will still be revealed.

## Flag
{GYM_LEADER_ADRIAN}