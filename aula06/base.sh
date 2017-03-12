#!/bin/bash
# Script que cria diretorios utilizando de Return Codes para
# verificar o sucesso/erro de cada comando executado


# Cria a estrutura de diretorios
echo -n "Criando diretorio Arquivos/Programas: "
mkdir -p Arquivos/Programas
if [[ $? == 0 ]]; then
    echo "OK";
else
    echo "FAIL";
fi

echo -n "Criando diretorio Arquivos/Downloads: ";
mkdir Arquivos/Downloads
if [[ $? == 0 ]]; then
    echo "OK";
else
    echo "FAIL";
fi

echo -n "Criando diretorio Arquivos/Imagens: ";
mkdir Arquivos/Imagens
if [[ $? == 0 ]]; then
    echo "OK";
else
    echo "FAIL";
fi

echo -n "Criando diretorio Arquivos/Videos: ";
mkdir Arquivos/Videos
if [[ $? == 0 ]]; then
    echo "OK";
else
    echo "FAIL";
fi
