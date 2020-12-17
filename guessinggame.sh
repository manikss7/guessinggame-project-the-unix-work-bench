#!/bin/bash
#reading_the_number_of_files_in_current_directory
no_of_files=`ls -1 . | egrep -c '^-'`
function guessinggame()
{
echo "Welcome!!! Please guess the number of files in the current directory"
#read_guess_the_number_of_files
read response
#main_evaluation_to_check_the_guess
while [[ $response -ne $no_of_files ]]
  do
    if [[ $response -lt $no_of_files ]]
      then echo "Oops!!! Your guess is too low, Please try Again!!!"
    elif [[ $response -gt $no_of_files ]]
      then echo "Oops!!! Your guess is too high, Please try Again!!!"
    fi
    echo "Please guess again, make sure your guess is greater than zero"
    read response
  done
#if_the_guess_was_correct_appears_the_congratulations_message
echo "WOW!!! Your guess $response was correct, Congratulations!!!"
}
#call function for playing the game
guessingame
