## Taller 4

### Ejercicio 5


Basándonos en el [Ejemplo completo: Despliegue y acceso a Wordpress + MariaDB](https://github.com/josedom24/curso_kubernetes_ies/blob/main/modulo7/wordpress.md) vamos a realizar el despliegue de la aplicación NextCloud + MariaDB. Para ello ten en cuenta lo siguiente:

* El despliegue de la base de datos se haría de la misma forma que encontramos en el ejemplo de Wordpress, pero para esta actividad vamos a usar la imagen `mariadb:10.5`.
* Según la documentación de [NextCloud en DockerHub](https://hub.docker.com/_/nextcloud) las variables de entorno que tienes que modificar serían: `MYSQL_DATABASE`, `MYSQL_USER`, `MYSQL_PASSWORD` y `MYSQL_HOST`.
* Al igual que en el ejemplo utiliza un recurso ConfigMap para guardar los valores de configuración no sensibles, y un recurso Secret para los datos sensibles.
* Utiliza los ficheros yaml del ejemplo haciendo las modificaciones oportunas.

```bash
kubectl create cm bd-datos --from-literal=bd_user=user_nextcloud \
                           --from-literal=bd_dbname=nextcloud \
                           -o yaml --dry-run=client > bd_datos_configmap.yaml

kubectl create secret generic bd-passwords --from-literal=bd_password=password1234 \
                                           --from-literal=bd_rootpassword=root1234 \
                                           -o yaml --dry-run=client > bd_passwords_secret.yaml
```

```bash
kubectl apply -f bd_datos_configmap.yaml
kubectl apply -f bd_passwords_secret.yaml

kubectl apply -f mariadb-deployment.yaml
kubectl apply -f mariadb-srv.yaml

```
