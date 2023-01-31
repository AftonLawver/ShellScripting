#!/bin/bash

#We can save some text to a file.

echo "Created a new file!" > file.txt

#We can also write text to a file from the shell
echo "Write some text to the file file.txt (must click ctrl+d to continue)"
cat > file.txt

#We can also append text to a file from the shell.
echo "Append some text to the file file.txt (must click ctrl+d to continue)"
cat >> file.txt

#How to do a multiline comment

: '
This is a comment
This is a comment
This is a comment'



