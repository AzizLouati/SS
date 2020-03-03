#!/bin/sh
# this is a comment
function lw {
exec lshw 
}

function lu {
exec lscpu 
}

function h {
cat p | head -n 46
}

function helpp {
cat p | tail -n 6 
}
    
function save {
exec lshw | head -n 17 >> /home/xx/Downloads/aziz
exec lscpu | head -n 13 >> /home/xx/Downloads/aziz
}
