#!/bin/bash
files=$(yad --width 200 --height 200 --title "Scripting" \
    --text=" veuillez choisir votre choix:" \
    --button="lw:2" \
    --button="lu:3" \
    --button="help:4" \
--button="help:6" \
    --button="s:5" \
    --button=gtk-cancel:1 \
    --on-top \
    --center \
)

var=$?
[[ $var -eq 1 ]] && exit 0

if [[ $var -eq 2 ]]; then
      exec ./script.sh -lw | yad --text-info --width="800" --height="1000" --title="Resultat"
fi
if [[ $var -eq 3 ]]; then

      exec ./script.sh -lu | yad --text-info --width="800" --height="1000" --title="Resultat"
fi
if [[ $var -eq 4 ]]; then

      exec ./script.sh -h | yad --text-info --width="800" --height="1000" --title="Resultat"
fi
if [[ $var -eq 5 ]]; then
exec ./script.sh -s 


fi 
if [[ $var -eq 6 ]]; then
exec ./script.sh -help | yad --text-info --width="800" --height="1000" --title="Resultat"


fi 

