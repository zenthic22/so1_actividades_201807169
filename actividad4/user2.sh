#!/bin/bash

while true; do
    # Solicitar entrada del usuario y enviarla al participante 1
    read -p "You: " message
    echo "$message" > participant2_to_participant1

    # Leer mensaje del participante 1 y mostrarlo
    read message < participant1_to_participant2
    echo "Participant 1: $message"
done
