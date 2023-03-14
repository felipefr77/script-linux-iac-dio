#!/bin/bash

echo "Iniciando Script..."


#Criando os diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


#Criando os grupos de usuários
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


#Criando os usuários e vinculando aos seus respectivos grupos
useradd carlos -c "Carlos dos Testes" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -g GRP_ADM
useradd maria -c "Maria dos Testes" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -g GRP_ADM
useradd joao -c "João dos Testes" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -g GRP_ADM

useradd debora -c "Débora dos Testes" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -g GRP_VEN
useradd sebastiana -c "Sebastiana dos Testes" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -g GRP_VEN
useradd roberto -c "Roberto dos Testes" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -g GRP_VEN

useradd josefina -c "Josefina dos Testes" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -g GRP_SEC
useradd amanda -c "Amanda dos Testes" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -g GRP_SEC
useradd rogerio -c "Rogério dos Testes" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -g GRP_SEC


#Alterando permissões diretório
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

#Definindo grupo de usuários dos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec



echo "Script finalizado!"
