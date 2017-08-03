#!/bin/bash

# Verify that the user is EscapeRush for file tree consistancy
if [ $USER != 'EscapeRush' ] ; then
    echo Error: User is not \'EscapeRush\'
    exit
fi

git config --global user.name EscapeRush
git config --global user.email vincent@escaperush.com
git config --global push.default simple

read -p "Enter repo to be configured :" repo

git clone "https://github.com/EscapeRush/$repo.git"
