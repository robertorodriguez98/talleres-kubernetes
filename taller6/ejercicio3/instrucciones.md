Siguiendo la guía que hemos desarrollado en [Ejemplo 3: Wordpress con almacenamiento persistente](https://github.com/josedom24/curso_kubernetes_ies/blob/main/modulo8/wordpress.md) vamos a configurar el despliegue de Nextcloud para que use volúmenes (vamos a usar dos volúmenes, uno para la aplicación y otro para la base de datos) para que la información no se pierda.

Realiza los siguientes pasos:

1. Crea los ficheros yaml para definir los recursos PersistentVolumenClaim para solicitar dos volúmenes de 4Gb.
2. Crea esos recursos y comprueba que se ha asociado un volumen de forma dinámica a cada solicitud.
3. Modifica los ficheros de despliegue de la aplicación y la base de datos para asociar los volúmenes a cada uno. Según la documentación de la imagen [Nextcloud](https://hub.docker.com/_/nextcloud) en Docker Hub, la forma más sencilla de hacer persistente la aplicación es montar el volumen en el directorio`/var/www/html/`.
4. Accede a la aplicación, configúrala y sube un fichero.
5. Comprobemos la persistencia: elimina los despliegues, vuelve a crearlos y vuelve a acceder desde el navegador y comprueba que la aplicación está configurada y mantiene el fichero que habías subido
