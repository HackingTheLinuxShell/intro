#!/bin/bash

function erro
{
    echo "Erro: $1";  # $1 eh o parametro passado na hora
    # na hora da execucao
    return 0;
}

erro "Um erro ocorreu no sistema";
