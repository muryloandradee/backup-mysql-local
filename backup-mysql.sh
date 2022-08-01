#!/bin/bash

CAMINHO_HOME=/home/user

cd $CAMINHO_HOME

if [ ! -d backup ]
then

	mkdir backup

fi

mysqldump -u root $1 > $CAMINHO_HOME/backup/$1.sql


if [ $? -eq 0 ]
then
	echo "O processo de backup foi um sucesso"
else
	echo "O processo de backup falhou"
fi
