<p>En este documento se dará una breve explicación acerca del funcionamiento de un chat básico utilizando named pipes y bash con linux</p>

---

# Primero mostraremos el script de cada usuario, en este caso son los dos que fueron indicados en la actividad

---

## Script del participante 1:

---
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

---

## Script del participante 2:

---
#!/bin/bash

while true; do
    # Solicitar entrada del usuario y enviarla al participante 1
    read -p "You: " message
    echo "$message" > participant2_to_participant1

    # Leer mensaje del participante 1 y mostrarlo
    read message < participant1_to_participant2
    echo "Participant 1: $message"
done

---

# Ahora procederemos a ejecutar cada script en dos terminales para la comunicacion

---

## Resultado en la terminal 1:

---

<p aligne="center">
    <image src="./capturas/resultado1.png" />
</p>

---

## Resultado en la terminal 2:

---

<p aligne="center">
    <image src="./capturas/resultado2.png" />
</p>

---

## Intercambio del participante 2 al participante 1:

---

<p aligne="center">
    <image src="./capturas/enviop2.png" />
</p>

<p aligne="center">
    <image src="./capturas/recibiop1.png" />
</p>

---

## Intercambio del participante 1 al participante 2:

---

<p aligne="center">
    <image src="./capturas/enviop1.png" />
</p>

<p aligne="center">
    <image src="./capturas/recibiop2.png" />
</p>

---

## Con esto, el chat basico con named pipes ha funcionado correctamente :D