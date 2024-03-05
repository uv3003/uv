#!/usr/bin/env bash

clear  # Let clear the screen first

echo " Starting the spinning wheel.."
echo " Press 'q' or 'Q' to stop it.."

# to set the cursor position on terminal on row 2 column 1
tput cup 2 1

while true; do
   echo '|'
   sleep 1
   tput cup 2 1  # reset cursor position
   
   echo '/'
   sleep 1
   tput cup 2 1
   echo '-'
 
   sleep 1
   tput cup 2 1
   echo '\'
 
   sleep 1
   tput cup 2 1
   echo '|'
  
   tput cup 2 1
  # -t for timeout, -N to except only 1 character
   read -t 0.25 -N 1 ch
   if [[ $ch = "q" ]] || [[ $ch = "Q" ]]; then
       # The following line is for the prompt to appear on a new line.
        echo
        break 
    fi

done



