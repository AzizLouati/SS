#!/bin/sh
# this is a comment
echo $1
if  [ $1 = "-lw" ]; then
    exec lshw 

elif [ $1 = "-lu" ]; then
    exec lscpu 
elif [ $1 = "-h" ]; then
cat p | head -n 46

elif [ $1 = "-help" ]; then
cat p | tail -n 6 
    
elif [ $1 = "-s" ]; then
exec lshw | head -n 17 >> /home/xx/Downloads/aziz
exec lscpu | head -n 13 >> /home/xx/Downloads/aziz
fi


