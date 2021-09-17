#!/bin/bash
# Prompting the user to enter some numbers
printf "Enter Some Numbers: "
# reading the numbers that the user entered
read -a numbers
# the array to save the valid numbers
declare -a int_numbers=()
# looping through the user input to check the valid numbers
for i in ${numbers[*]}
do
    # using regular Expressions to check the the user input is a number
    if [[ ${i} =~ [0-9] ]]
    then
        # adding the valid number in to the array int_numbers
        int_numbers=(${int_numbers[*]} $i)
    else
        # exiting the script if there is any invalid number
        echo "there is an Invalid Number!!"
        exit 0
    fi
done

# see if the user entered numbers or not
if [ "${#int_numbers[*]}" == 0 ]
then
    printf "You have to Enter Some Numbers!\n"; exit 0
else
    # figure out the max number in the array int_numbers after.
    max_num=${int_numbers[0]}
    # looping through the array to figure out the maximum number
    for i in ${int_numbers[*]}
    do
        if ((${i} >= ${max_num}))
        then
            max_num=${i}
        else
            continue
        fi
    done
    # printing the maximum number to the stdout
    printf "%d is the max number\n" ${max_num}
fi
