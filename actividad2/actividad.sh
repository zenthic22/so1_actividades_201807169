#!/bin/bash

#imprimimos el mensaje que haga que el usuario "digite" su usuario de github
echo "Digite el nombre de user de Github: "
#leemos la variable en cual se almacenara en el bash la cual tendrá de nombre GITHUB_USER
read GITHUB_USER
#consultamos nuestro user utilizando el comando curl, concatenando la variable almacenada
respuesta=$(curl -s -f -S -k "https://api.github.com/users/$GITHUB_USER")
#ahora utilizando la libreria jq para poder extraer el id de nuestro user
id=$(echo $respuesta | jq '.id')
#mostramos la fecha de creacion del script, para ello extraemos el id de creacion de usuario y eliminaremos las " para mostrarnos el mensaje sin comillas
fecha_creacion=$(echo $respuesta | jq '.created_at' | tr -d '"')
#guardamos todo el mensaje en una variable
msg="Hola $GITHUB_USER. User ID: $id. Cuenta creada el: $fecha_creacion."
#mostramos el mensaje en pantalla
echo $msg

#Crearemos un log file para almacenar el mensaje para manipularla mas adelante
dia_actual=$(date +"%Y-%m-%d")
#almacenaremos la fecha en el log file
log_file="/tmp/$dia_actual/saludo.log"
#crearemos el directorio para ese log file
mkdir -p $(dirname $log_file)
#aseguraremos que el directorio padre del archivo log_file exista
echo $msg >> $log_file

#crearemos el cronjob para que el script se ejecute cada 5 minutos
#crontab -e