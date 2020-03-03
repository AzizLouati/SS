#!/bin/bash
# Bash Menu Script Example
source ./funct.sh


PS3='Please enter your choice: '
options=("lw" "lu" "save" "Quit" "help" "menu_yad")
select opt in "${options[@]}"
do
    case $opt in
        "lw")
            echo "you chose choice 1"
select item in commande_lshw version -x help -html 
do 
    case $item in 
           version)

exec lshw -version
break 
;;
-x)

exec lshw -x
break
;;
la_commande_lshw)
exec lshw
break 
;;
help)
exec lshw -help
break
;;
-html)
exec lshw -html
break
;;
esac
done
;;


        "lu")
            echo "you chose choice 2"
select item1 in executer_la_commande_lscpu Limit_the_output_to_offline_CPUs Limit_the_output_to_online_CPUs
do 
    case $item1 in 
          executer_la_commande_lscpu)

exec lscpu
break 
;;
Limit_the_output_to_offline_CPUs)

exec lscpu --parse
break
;;
Limit_the_output_to_online_CPUs)
exec lscpu --parse
break 
;;
esac
done
;;
	    
        "save")
            echo "you chose choice 3"
	    save 
echo "saved succesuflly"
break
            ;;
"help")
echo " you chose choice 5 "
helpp
break
;;

"menu_yad")
exec ./test.sh
break
;;
        "Quit")
            break
            ;;
        *) echo "invalid option";;
    esac
done
