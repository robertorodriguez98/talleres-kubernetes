
Siguiendo la guía explicada en el [Ejemplo 2: Gestión dinámica de volúmenes](https://github.com/josedom24/curso_kubernetes_ies/blob/main/modulo8/ejemplo2.md), vamos a crear un servidor web que permita la ejecución de scripts PHP con almacenamiento persistente.

Para realizar esta actividad vamos a usar asignación dinámica de volúmenes y puedes usar, como modelos, los ficheros del ejemplo 2.

Realiza los siguientes pasos:

1. Crea un fichero yaml para definir un recurso PersistentVolumenClaim que se llame `pvc-webserver` y para solicitar un volumen de 2Gb.
2. Crea el recurso y comprueba que se ha asociado un volumen de forma dinámica a la solicitud.
3. Crea un fichero yaml para desplegar un servidor web desde la imagen `php:7.4-apache`, asocia el volumen al Pod que se va a crear e indica el punto de montaje en el *DocumentRoot* del servidor: `/var/www/html`.
4. Despliega el servidor y crea un fichero `info.php` en `/var/www/html`, con el siguiente contenido: `<?php phpinfo(); ?>`.
5. Define y crea un Service NodePort, accede desde un navegador al fichero `info.php` y comprueba que se visualiza de forma correcta.
6. Comprobemos la persistencia: elimina el Deployment, vuelve a crearlo y vuelve a acceder desde el navegador al fichero `info.php`. ¿Se sigue visualizando?
