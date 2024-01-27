<style>
    .titleBig {
        font-family: 'Handlee', cursive;
        color: #FFE4C4;
        font-size: 26px;
    }
    .text-parr {
        font-family: 'Handlee', cursive;
        text-align: justify;
        font-size: 16px;
        color: #00FFFF;
    }
    .list {
        font-family: 'Handlee', cursive;
        text-align: justify;
        font-size: 16px;
        color: #00FFFF;
    }
</style>
<center>
    <b><h1 class="titleBig">Tipos de Kernel</h1></b>
</center>

<p class="text-parr">
    Antes de adentrarnos en el tema de los tipos de kernel, debemos de tomar en cuenta de que es un kernel. A grandes rasgos un kernel es un complemento que se encuentra en el centro del sistema operativo (SO) que hace interfaz entre el usuario (nosotros) y la máquina. El kernel se caracteriza por esenciales y no esenciales las cuales nombraremos cada una de ellas:
    <ul class="list">
        <li>Kernel Monolítico:
        Este es un kernel de gran tamaño que gestiona todas las tareas. Esta es la encargada de la gestión de memoria y procesos. Los sistemas operativos que recurren a este tipo de kernel son linux, OS X y Windows.
        </li><br>
        <li>Microkernel:
        Este tipo de kernel tiene como función principal evitar el colapso total del sistema en caso de un fallo. Para cumplir con todas las tareas como un kernel monolítico cuenta con diferentes módulos. A diferencia del primer tipo el único sistema operativo que recurre con este kernel es el Mach de OS X.
        </li><br>
        <li>Kernel Híbrido:
        Este tipo de kernel es la combinación de los dos anteriores. La diferencia es que es un kernel grande y compacto ya que este puede ser modulado y otras partes del mismo, la caracteristica que diferencía entre los dos anteriores es que este kernel pueden cargarse de manera dinamica, los sistemas operativos utilizados para este son linux y OS X.
        </li><br>
        <li>Nanokernel:
        Este es un microkernel aun más reducido cuyo uso esta destinado a sistemas embebidos ya que el nivel de fiabilidad es mayor.
        </li><br>
        <li>Exokernel:
        La estructura que este posee es innovador ya qye es de manera vertical. Los núcleos son pequeños y su desarrollo tiene fines investigativos. La toma de decisiones para este kernel esta a cargo de los programas para hacer uso de los recursos del hardware en ciertas bibliotecas.
        </li><br>
        <li>Unikernel:
        Es un kernel destinado a la eliminación de capas intermedias entre el hardware y las aplicaciones, ya que busca simplificar lo más posible todos los procesos. Este kernel tiene como ventaja para los dispositivos IoT ya que posee bajo consumo.
        </li><br>
        <li>Anykernel:
        Este kernel es otro concepto innovador que busca conservar las cualidades de los kernel monolíticos, pero también facilitar el desarrollo de los controladores, al mismo tiempo que ofrece mayor seguridad al usuario.
        </li>
    </ul>
</p>

<br>
<br>
<br>
<center>
    <b><h1 class="titleBig">Diferencias entre los tipos de kernel</h1></b>
</center>
<p class="text-parr">
Los kernel mencionados en el punto anterior estan clasificados en esenciales y no esenciales, para fines de explicación se dara una descripcion breve de las diferencias entre estos dos tipos de clasificación.

<p class="text-parr">Los kernel esenciales son componentes fundamentales del kernel necesarios para el funcionamiento básico del sistema operativo. Mientras que los kernel no esenciales son componentes adicionales que proporcionan funcionalidades adicionales o mejoras pero no son críticos para el funcionamiento básico del sistema.</p>
</p>

<br>
<br>
<br>
<center>
    <b><h1 class="titleBig">User vs Kernel Mode</h1></b>
</center>
<p class="text-parr">
Las CPUs tienen al menos dos modos de funcionamiento:
<ul class="list">
    <li>Modo Usuario:
    El intento de ejecución de una instrucción privilegiada en este modo produce una excepción.
    </li>
    <li>Modo Kernel:
    En el se puede ejecutar cualquier instrucción.
    <ul class="list">
        <li>
        El código del SO se ejecuta en este modo. Por ello, se denomina kernel al código del SO que se ejecuta en este modo.
        </li>
    </ul>
</ul>
</p><br>
<p class="text-parr">
En el modo de usuario, al iniciar una aplicación en modo usuario, Windows crea un proceso para ella. Este proceso proporciona la aplicación un espacio de direcciones virtuales privado y una tabla de identificadores privados.

<p class="text-parr">
En el modo de kernel, todo el código que se ejecuta en modo kernel comparte un único espacio de direcciones virtuales. Como resultado, un controlador en modo kernel no esta aislado de otros controladores ni del sistema operativo.
</p>
</p><br>

<p class="text-parr">
La distinción entre el modo de usuario y de kernel es fundamental para la seguridad y estabilidad del sistema operativo. Limitar el acceso directo al modo de kernel ayuda a prevenir que los programas de usuario realicen acciones que podrían afectar negativamente al sistema operativo o a otros programas en ejecución, lo que ayuda a garantizar la estabilidad y seguridad del sistema.
</p>

<br>
<br>
<br>
<center>
    <b><h1 class="titleBig">Interruptions vs Traps</h1></b>
</center>
<p class="text-parr">
Antes de dar una comparación entre interrupciones y trampas debemos de tener nota una breve descripción entre ambos para dar una conclusión de ambos conceptos.

<p class="text-parr">
Una interrupción en un sistema operativo es una suspensión temporal de la ejecución de un proceso, para pasar a ejecutar una subrutina de servicio de interrupción, la cual, por lo general, no forma parte del programa, sino que pertenece al sistema operativo o al BIOS. Las interrupciones surgen de la necesidad que tienen los dispositivos periféricos de enviar información al procesador principal de un sistema informático.
</p>

<p class="text-parr">
Una trampa en un sistema operativo es una interrupción generada por el software provocada por un error o excepción que ocurre mientras se ejecuta un programa. Cuando ocurre una trampa, la CPU cambia el modo de usuario al modo kernel y salta al controlador de trampas, un punto predefinido en el sistema operativo.
</p>
</p>

<p class="text-parr">
En conclusion, las interrupciones son eventos asíncronicos generados por hardware o software externo que requieren atención inmediata del sistema operativo, mientras que las trampas son eventos síncronicos generados por el propio programa en ejecución debido a condiciones anormales. Ambos mecanismos son esenciales para la gestión de eventos y el control de flujo en sistemas operativos.
</p>

<br>
<br>
<br>
<center>
    <b><h1 class="titleBig">Referencias</h1></b>
</center>
<ul class="list">
    <li>https://www.thepowermba.com/es/blog/que-es-el-kernel-cual-es-su-trabajo-y-como-funciona</li><br>
    <li>https://lsi2.ugr.es/jagomez/sisopi_archivos/1Introduccion.pdf
    </li><br>
    <li>
    https://learn.microsoft.com/es-es/windows-hardware/drivers/gettingstarted/user-mode-and-kernel-mode
    </li><br>
    <li>
    https://lcsistemasoperativos.wordpress.com/tag/interrupciones/
    </li><br>
    <li>
    https://es.linux-console.net/?p=22889
    </li>
</ul>