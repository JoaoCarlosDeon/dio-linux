#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd  carlos -c "Carlos Almeida" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd  maria -c "Maria Aparecida" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd  juca -c "Juca Rodrigues" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM

useradd  debora -c "Débora Martinez" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd  sebastiana -c "Sebastiana Ferraz" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd  roberto -c "Roberto Freitas" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN

useradd  josefina -c "Josefina de Souza" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC
useradd  amanda -c "Amanda Costa" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC
useradd  rogerio -c "Rogério Cardoso" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado!"






