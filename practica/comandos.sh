kubectl create cm cm-mariadb --from-literal=mysql_usuario=bookmedik     \
                            --from-literal=basededatos=bookmedik

kubectl create secret generic secret-mariadb --from-literal=password=bookmedik   \
                                            --from-literal=rootpass=root

kubectl scale deployment/bookmedik --replicas=5