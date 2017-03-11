#!/bin/bash
echo -n "Digite um nome de usuario para ser consultado no sistema: "
read user;

grep $user /etc/passwd

#  Tambem funcionaria
# cat /etc/passwd | grep $user


# Exercicio 02 - Resolucao
#  grep $user /etc/passwd > user.txt
#  cat /etc/passwd | grep $user > user.txt
