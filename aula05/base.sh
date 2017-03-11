#!/bin/bash

# Exercicio 01
horas=$(date +%H:%M:%S);
echo "Agora sao $horas";

# Exercicio 02
data_info=$(date);
log_file="log.log";
echo "Adicionando log ao arquivo $log_file";
echo $data_info >> $log_file;
