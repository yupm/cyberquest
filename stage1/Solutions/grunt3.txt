The file is filled with randomly generated words.

First way to find the password is to cat the file and slowly scroll through every line

The second way is to cat the file and pipe it through a grep command, as follows,
    cat data.txt | grep {

As our passwords always start with a { , using it as a grep condition will bring the line of text with the next password.