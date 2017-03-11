#!/bin/bash
senha="abcdefg";  # define a senha

echo "Digite a senha para acessar: ";
read entrada;

if [[ $entrada == $senha ]]; then
    echo "Bem vindo!";
else
    echo "Senha incorreta.";
fi

exit 0;
