#!/bin/bash

# Vérifie si l'utilisateur a fourni un argument
if [ -z "$1" ]; then
    echo "Usage: $0 <adresse_ip>"
    exit 1
fi

# Boucle à travers les ports de 1 à 65535 et tente de se connecter à chaque port
for port in {1..65535}; do
    (echo >/dev/tcp/$1/$port) >/dev/null 2>&1 && echo "Port $port ouvert"
done
