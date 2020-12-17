#!/usr/bin/env bash
#reading the number of files in current directory
no_of_files=`ls -1 . | wc -l`
function guessinggame()
{
echo "Welcome!!! Please guess the number of files in the current directory"
#read guess the number of files
read response
#main evaluation to check the guess
while [[$response -ne $no_of_files]]
  do
    if [[$response -lt $no_of_files]]
      then echo "Oops!!! Your guess is too low, Please try Again!!!"
    elif [[$response -gt $no_of_files]]
      then echo "Oops!!! Your guess is too high, Please try Again!!!"
    fi
    echo "Please guess again, make sure your guess is greater than zero"
    read response
  done
#if the guess was correct appears the congratulations message
echo "WOW!!! Your guess $response was correct, Congratulations!!!"
}
#call function for playing the game
guessingame
