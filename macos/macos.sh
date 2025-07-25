#!/bin/sh

echo "Selected MacOS..."
mac_cpu() {
    echo "What CPU does your Mac have?"
    echo "1. Intel"
    echo "2. Silicon"
    read -p "Select a CPU (choose 0 to abort): " os
}

checker() {
    if [ $os = 0 ]; then
        echo "Aborting install..."
        exit 0

    elif [ $os = 1 ]; then
        cd ./intel
        sudo sh intel.sh

    elif [ $os = 2 ]; then
        cd ./silicon
        sudo sh silicon.sh

    else
        echo "Invalid option, choose again."
        mac_cpu
        checker

    fi
}

mac_cpu
checker
