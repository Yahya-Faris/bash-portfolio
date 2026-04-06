#!/usr/bin/env bash

# Description: This script calculates available RAM and checks 
# if there is enough space to install a specific application.

read -p "Write total RAM (GB): " total
read -p "Write used RAM (GB): " used
read -p "Write the app size (GB): " app

free=$(( $total - $used ))

if [[ $free -ge $app ]]; then
    echo "Approved! Installing App."
    remaining=$(( $free - $app ))
    echo "📊 RAM remaining after install: $remaining GB"
else
    echo "❌ Error: Not enough space! Need more RAM."
    exit 1
fi
