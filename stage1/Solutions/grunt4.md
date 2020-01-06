This challenge contains a hidden file, somewhere in the /etc folder, 
owned by the user and group grunt4 and the size of the file is 45 bytes.

To find the file, we can run the following command,
    find /etc/* -user grunt4 -group grunt4 -size 45b

The file will show up as one of the results.