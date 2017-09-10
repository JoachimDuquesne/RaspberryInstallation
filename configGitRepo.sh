#!/bin/bash

# Verify that the user is EscapeRush for file tree consistancy
if [ $USER != 'metabaron' ] ; then
    echo Error: User is not \'metabaron\'
    exit
fi

git config --global user.name JoachimDuquesne
git config --global user.email joachim.duquesne@gmail.com
git config --global push.default matching

read -p "Enter repo to be configured :" repo

git clone "https://github.com/JoachimDuquesne/$repo.git"
