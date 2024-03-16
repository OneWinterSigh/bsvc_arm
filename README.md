# INTRODUCCIÓN
Esto no es ningún tipo de trabajo serio y no me hago responsable de las consecuencias.
Adjunto la última versión a día 16 de Marzo de 2024 que ha sido lanzada para la herramienta bsvc (2.4.6). El proceso que describo aquí abajo es simple y explica lo que ya viene dentro de INSTALL.md. Además explico cómo pensé para tener las dos líneas de receive/transmit.

# COMIENZO 

Este es un fichero en el que voy a incluir el proceso realizado para hacer funcionar "bsvc" en ARM.

1. Descargo el repositorio en su última versión (2.4.6) en el siguiente enlace: https://github.com/BSVC/bsvc/releases/tag/v2.4.6

2. En el enlace se explica cómo instalarlo, pero voy a agregar aquí también los pasos
        2.a Tener las últimas versiones (recomendado) de:
                - cpp
                - c
                - make
                - tcl/tk
        Partiendo desde /bsvc-2.4.6
        2.b Sigo las instrucciones de INSTALL.md para customizar el archivo correspondiente a tu sistema.
        2.c Una vez personalizado compilo el proyecto usando `make -f Makefile.tusistema'
        2.d Instalo con `make -f Makefile.tusistema install`

Con el último paso ya tendríamos tanto bsvc como 68kasm instalado en el sistema.
Como este proyecto se ha desarrollado para poder realizar el proyecto de la asignatura Arquitectura de Computadores de la Universidad Politécnica de Madrid, voy a explicar a continuación el proceso que realicé para conseguir el mismo simulador que el proporcionado por la asignatura.

(Este siguiente paso ya lo doy hecho "./serial.setup")

3. Modifico "serial.setup".
        3.a Al final se puede observar "PortBCommand =", a partir de aquí añado "xterm -T "M68681 Port B" -132 -fn fixed -e xtermpipe"
        Esto es la configuración del Puerto A, pero para el segundo puerto disponible B.

# Prueba
Probado para:
	- Linux Ubuntu LTS 22.04.
	- gcc (Ubuntu 11.3.0-1ubuntu1~22.04.1) 11.3.0
	- g++ (Ubuntu 11.3.0-1ubuntu1~22.04.1) 11.3.0

Ha sido probado en una ejercicio sencillo de envío y transferencia a través de la línea A. 

Actualizaré si hay más que saber.
