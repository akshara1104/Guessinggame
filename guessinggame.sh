#!/bin/bash
function guessinggame {

    num=$(find | wc -l)       
    echo "Welcome to Guessinggame!"
    echo "Please enter how many files there are in the current directory."
    read response
    echo "You entered: $response"

    while true
    do
        if [[ $(echo $response | egrep -q "^[0-9]+$"; echo $?) -ne 0 ]];
        then
             echo "Must be a number. Please guess again."
        elif [[ $response -lt $num ]]
        then 
              echo "This is too low. Please guess again."
        elif [[ $response -gt $num ]]
        then
             echo "This is too high. Please guess again."
        else
            echo "Congratulations! You guessed it."
            break
        fi

        read response
        echo "You entered: $response"
    done


}

guessinggame
