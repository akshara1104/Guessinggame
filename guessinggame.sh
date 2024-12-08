#!/bin/bash

function play_guessing_game {
    file_count=$(find . -type f | wc -l)
    
    echo "Welcome to the Guessing Game!"
    echo "Try to guess how many files are in the current directory."
    
    while true; do
        read -p "Enter your guess: " user_guess
        
        if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
            echo "Invalid input. Please enter a valid number."
            continue
        fi
        
        if [[ $user_guess -lt $file_count ]]; then
            echo "Too low. Try again!"
        elif [[ $user_guess -gt $file_count ]]; then
            echo "Too high. Try again!"
        else
            echo "Congratulations! You guessed it right."
            break
        fi
    done
}

play_guessing_game
