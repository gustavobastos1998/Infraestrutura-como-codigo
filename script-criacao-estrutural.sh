#! /bin/bash

#criação dos diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

#criação dos grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#garantir que o dono dos diretórios será o root, além de estabelecer os gruposaos respectivos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#estabelecer permissões para cada diretório
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

#criação dos usuários e estruturação deles para cada grupo

#GRUPO ADM
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Carlos" carlos
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Maria" maria
useradd -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Joao" joao

#GRUPO VEN
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Debora" debora
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Sebastiana" sebastiana
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Roberto" roberto

#GRUPO SEC
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Josefina" josefina
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Amanda" amanda
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -1 senha123) -c "Rogerio" rogerio
