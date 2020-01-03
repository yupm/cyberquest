#!/usr/bin/env python3

import socket
import sys

HOST = '127.0.0.1'  # Standard loopback interface address (localhost)
PORT = 30000        # Port to listen on 
GRUNT8 = "{PROTECT_WORLD_PEACE}"


GRUNT9_KEYFILE = "/etc/grunt9/.ssh/grunt9.key"
BUFFER_SIZE = 1024

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

try:
    s.bind((HOST, PORT))
    s.listen()
    while True:
        conn, addr = s.accept()
        with conn:
            #print('Connected by', addr)
            while True:
                try:
                    data = conn.recv(BUFFER_SIZE)
                    if not data:
                        break

                    ans = data.decode("UTF-8")
                    ans = ans.strip('\n')
                 
                    if ans != GRUNT8:
                        conn.sendall(b"Wrong! Please try again!\n")
                    else:
                        conn.sendall(b"\nBingo! Gotta catch 'em all!")
                        conn.sendall(b"\n")

                        with open(GRUNT9_KEYFILE, 'rb') as f:
                            l = f.read(BUFFER_SIZE)
                            while(l):
                                conn.sendall(l)
                                l = f.read(BUFFER_SIZE)
                                if not l:
                                    f.close()
                                    break
                    break
                    
                except SocketError as e:
                    break

except KeyboardInterrupt:
    print("Closing Connection")
    s.close()
