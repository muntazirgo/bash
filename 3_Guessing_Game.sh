#!/bin/bash

word_to_guess="muntazir"
limit=3
user_guess_count=0
while [[ ${user_guess_count} < ${limit} ]]
do
    read -ep "Enter Your Guess: " user_guess
    if [ "${user_guess}" == "" ]
    then
        echo "You Have to Enter Something!"; clear
        continue
    elif [ "${user_guess}" == "${word_to_guess}" ]
    then
        tput setab 10; tput setaf 0; echo " You Win! "; tput sgr0;
        break
    else
        let user_guess_count=${user_guess_count}+1
        if [ $(( ${limit} - ${user_guess_count} )) == 0 ]
        then
            tput setab 9; tput setaf 0; echo " You Lose! "; tput sgr0;
        else
            printf "You Have %d Tries Left\n" $(( ${limit} - ${user_guess_count} ))
        fi
    fi
done
