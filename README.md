# Cyberquest

## Program dependencies
Install Vagrant https://www.vagrantup.com/downloads.html

Install Virtualbox 

## Starting instructions
Open terminal in stage1 folder (where the Vagrant file is)

Run: vagrant up

## Stage 1 Scenarios/Suggestions

### Introduction
You are part of a crime fighting team and is trying to gain access to Team Rocket's computer. Through investigation, you have found the first stage account and password from a grunt. Your job is to break through all levels of accounts in the computer and enter the boss's account.

Example scenarios for students:
Easy:

    Learn command to list file, and read files (ls,cat)
    Multiple files
    Hidden file (Learn to use parameters such as ls -a)
    The password for the next level is stored in a hidden file in the secret directory. (learn to move into directories)

Medium:

    The password for the next level is stored in the file data.txt next to the word pikachu
    The password for the next level is stored in the file data.txt and is the only line of text that occurs only once
    The password for the next level is stored in the file data.txt, which contains base64 encoded data

Hard:

    The password for the next level is stored somewhere on the server and has many properties (use find)
    The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work using mkdir. For example: mkdir /tmp/myname123. Then copy the datafile using cp, and rename it using mv
    The password for the next level can be retrieved by submitting the password of the current level to port 30000 on localhost. (Learn netcat)


