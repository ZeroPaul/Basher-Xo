#!/bin/bash

#Settings Default

ls

read -p 'User Name :: ' userx
read -p 'User Email :: ' emailx

# Confirmation
while true; do 
    echo "\n"
    read -p "Do you wish to this Settings? (Yes/No) :: " yn
    case $yn in
        [Yy]* )
            echo Make Settings
            git config --global user.name "$userx"
            git config --global user.email "$emailx"
            ssh-keygen
            cat ~/.ssh/id_rsa.pub;
            break;;
        [Nn]* ) 
            echo Cancel;
            exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

