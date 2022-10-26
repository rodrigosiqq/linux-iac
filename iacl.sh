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

useradd Mestre Dos Magos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd batata -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd buiu -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd jamelao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd kammel -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd peixoto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd apolonio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd marauder -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd girimum -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."

