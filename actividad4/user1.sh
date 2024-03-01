#!/bin/bash

mkfifo participant1_to_participant2
mkfifo participant2_to_participant1

while true; do
    # Leer mensaje del participante 2 y mostrarlo
    read message < participant2_to_participant1
    echo "Participant 2: $message"

    # Solicitar entrada del usuario y enviarla al participante 2
    read -p "You: " message
    echo "$message" > participant1_to_participant2
done
