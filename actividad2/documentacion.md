<center>
    <h1>Solucion Actividad 2</h1>
</center>

<p>
    !/bin/bash
</p>

<p>
    Imprimimos el mensaje que haga que el usuario "digite" su usuario de github.

    echo "Digite el nombre de user de Github: "
</p>

<p>
    Leemos la variable en cual se almacenara en el bash la cual tendrá de nombre GITHUB_USER.

    read GITHUB_USER
</p>

<p>
    Consultamos nuestro user utilizando el comando curl, concatenando la variable almacenada.

    respuesta=$(curl -s -f -S -k "https://api.github.com/users/$GITHUB_USER")
</p>

<p>
    Ahora utilizando la libreria jq para poder extraer el id de nuestro user.

    id=$(echo $respuesta | jq '.id')
</p>

<p>
    Mostramos la fecha de creacion del script, para ello extraemos el id de creacion de usuario y eliminaremos las " para mostrarnos el mensaje sin comillas.

    fecha_creacion=$(echo $respuesta | jq '.created_at' | tr -d '"')
</p>

<p>
    Guardamos todo el mensaje en una variable.

    msg="Hola $GITHUB_USER. User ID: $id. Cuenta creada el: $fecha_creacion."
</p>

<p>
    Mostramos el mensaje en pantalla.

    echo $msg
</p>

<img src="https://github.com/zenthic22/so1_actividades_201807169/blob/main/actividad2/captura_mensaje.png"/>

<p>
    Crearemos un log file para almacenar el mensaje para manipularla mas adelante.

    dia_actual=$(date +"%Y-%m-%d")
</p>

<p>
    Almacenaremos la fecha en el log file.

    log_file="/tmp/$dia_actual/saludo.log"
</p>

<p>
    Crearemos el directorio para ese log file.

    mkdir -p $(dirname $log_file)
</p>

<p>
    Aseguraremos que el directorio padre del archivo log_file exista.

    echo $msg >> $log_file
</p>

<p>
    Crearemos el cronjob para que el script se ejecute cada 5 minutos

    crontab -e
</p>

<p>
    Para finalizar manipularemos el script para que realice su ejecucion cada 5 minutos.
</p>
<img src="https://github.com/zenthic22/so1_actividades_201807169/blob/main/actividad2/captura.png" />
