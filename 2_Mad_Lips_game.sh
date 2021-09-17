#!/bin/bash

# Getting User Input
read -ep "Enter a color: " color
read -ep "Enter a plural name: " plural_name
read -ep "Enter a celebrity: " celebrity
if [ -z "${color}" ] || [ -z "${plural_name}" ] ||  [ -z "${celebrity}" ]
then
    echo "You Need To Answer all the Questions"
else
    # Displaying the Sentences
    printf "Roses are %s\n" ${color}
    printf "%s are good\n" ${plural_name}
    printf "I Love %s\n" ${celebrity}
fi

