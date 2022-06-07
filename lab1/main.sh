#!/bin/bash

echo "Amletova ES"
echo "Work with package"
echo "--------------------------"

while true; do
    echo ""
    read -p "Enter package name: " package_name

    if yum list installed $package_name 2>error.txt 1>ok.txt; then
        echo "YOU HAVE A PACKAGE"
        echo ""

        cat ok.txt
        yum info $packet_name 2>error.txt
        continue
    else
        echo "PACKAGE NOT INSTALLED"
        echo ""
    fi


    echo "LOOKING FOR A PACKAGE IN THE REPOSITORIES..."
    echo ""
    
    if yum search $package_name 2>error.txt 1>ok.txt; then
        echo "PACKAGE FOUND!"

        read -p "Install? [y/n]:" select
        if [ "$select" = "y" ]; then 
            yum install $package_name
        else
            break
        fi

    else
        echo "ERROR: NOTFING FOUND"
        echo ""
    fi
done
