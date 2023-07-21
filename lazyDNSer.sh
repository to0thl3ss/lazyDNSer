#!/bin/bash

# Check if we have sufficient arguments
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 domain [ip]"
    exit 1
fi

DOMAIN_NAME=$1
IP_ADDRESS=$2

# Function to add entries to /etc/hosts file
add_entry () {
    if ! grep -q "${DOMAIN_NAME}" /etc/hosts; then
        echo "${IP_ADDRESS} ${DOMAIN_NAME}" | sudo tee -a /etc/hosts
        echo "Entry added: ${IP_ADDRESS} ${DOMAIN_NAME}"
    else
        echo "Entry ${DOMAIN_NAME} already exists"
    fi
}

# Function to remove entries from /etc/hosts file
remove_entry () {
    if grep -q "${DOMAIN_NAME}" /etc/hosts; then
        sudo sed -i "/${DOMAIN_NAME}/d" /etc/hosts
        echo "Entry removed: ${DOMAIN_NAME}"
    else
        echo "Entry ${DOMAIN_NAME} does not exist"
    fi
}

# Decide which function to call, based on the number of arguments
if [ "$#" -eq 2 ]; then
    add_entry
elif [ "$#" -eq 1 ]; then
    remove_entry
else
    echo "Invalid number of arguments. Usage: $0 domain [ip]"
    exit 1
fi
