#!/bin/bash -e

while getopts i:k:u:n: flag
do
    case "${flag}" in
        i) ip=${OPTARG};;
        k) keypath=${OPTARG};;
        u) user=${OPTARG};;
        n) name=${OPTARG};;
    esac
done


if [ "$ip" = "" ] || [ "$keypath" = "" ] || [ "$user" = "" ] || [ "$name" = "" ]; then
    echo "Incorrect format"
    echo "usage: $0 -i <ip> -k <keypath> -u <user> -n <vm name>"
    exit 1
fi

docker-machine create -d generic \
    --generic-ip-address $ip \
    --generic-ssh-key $keypath \
    --generic-ssh-user $user \
    --generic-ssh-port 22 $name