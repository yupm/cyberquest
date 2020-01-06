## Solution for Grunt 8

This teaches about using port scanning and netcat.

### To get the flag

First find the listening port using 'nmap' command.

```
nmap localhost
```

Then using 'netcat' command, connect to the listener and send over the current Grunt 8 password.
Send the server's reply to a file.

```
echo '{PROTECT_WORLD_PEACE}' | nc localhost 30000 > data
```

Remove the communication reply ("Bingo! Gotta catch 'em all!") by editing the file.
Change the file permission to use it as a ssh key.

```
chmod 400 data
```

Then use it as a ssh key to log into Grunt 9.

```
ssh -i data grunt9@IPADDRESS
```

## Flag

```
{IM_ASH_KETCHUP}
```
