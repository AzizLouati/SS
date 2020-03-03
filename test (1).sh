#!/bin/bash
source ./funct.sh
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
      files=$(yad --width 200 --height 200 --title "lshw" \
    --text=" veuillez choisir votre choix:" \
    --button="lw:2" \
    --button="version:3" \
    --button="x:4" \
--button="html:5" \
--button="help:6" \
    --button=gtk-cancel:1 \
    --on-top \
    --center \
)
var1=$?
if [[ $var1 -eq 2 ]]; then

     lw | yad --text-info --width="800" --height="1000" --title="Resultat"
fi
if [[ $var1 -eq 3 ]]; then

      exec lshw -version 
fi
if [[ $var1 -eq 4 ]]; then
exec lshw -x


fi 
if [[ $var1 -eq 5 ]]; then
exec lshw -html | yad --text-info --width="800" --height="1000" --title="Resultat"


fi
if [[ $var1 -eq 6 ]]; then
exec lshw -help | yad --text-info --width="800" --height="1000" --title="Resultat"


fi

fi 



# ******************* lshw *********************




if [[ $var -eq 3 ]]; then
 files=$(yad --width 200 --height 200 --title "lshw" \
    --text=" veuillez choisir votre choix:" \
    --button="lu:2" \
    --button="offline:3" \
    --button="online:4" \
    --button=gtk-cancel:1 \
    --on-top \
    --center \
)
var2=$?
if [[ $var2 -eq 2 ]]; then

     lu | yad --text-info --width="800" --height="1000" --title="Resultat"
fi
if [[ $var2 -eq 3 ]]; then

      exec lscpu -parse | yad --text-info --width="800" --height="1000" --title="Resultat"
fi
if [[ $var2 -eq 4 ]]; then
exec lscpu -parse | yad --text-info --width="800" --height="1000" --title="Resultat"


fi 
fi 
# ****************** lcspu *************************
    

if [[ $var -eq 4 ]]; then

      h | yad --text-info --width="800" --height="1000" --title="Resultat"
fi
if [[ $var -eq 5 ]]; then
save


fi 
if [[ $var -eq 6 ]]; then
helpp | yad --text-info --width="800" --height="1000" --title="Resultat"


fi 

