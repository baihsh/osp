!/bin/bash

read -n1 -p "Do you want to continue[Y/N]?" answer

case $answer in

Y | y)

     echo "fine ,continue";;

N | n)

     echo "ok,good bye";;

*)

    echo "error choice";;

esac

exit 0
