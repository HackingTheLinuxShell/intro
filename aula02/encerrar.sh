#!/bin/bash

# Lock file definition
lock_file="../.lock";
commit_msg="Exercicios Aula 02"

# Colors definition
BLD="\033[01m";
RED="\033[091m";
GRN="\033[092m";
YEL="\033[092m";
END="\033[0m";


function error
{
    echo -e "[${YEL}!${END}] ${RED}ERRO:${END} $1";
}


function info
{
    echo -e "[${YEL}*${END}] $1"
}


function report_status
{
    if [[ $1 == 0 ]]; then
        echo -e "${GRN}SUCESSO${END}";
    else
        echo -e "${RED}FALHOU${END}";
        return 1;
    fi
    return 0;
}


function check_branch
{
    student_branch=$(cat ${lock_file});
    current=$(git branch -a | grep \* | awk {'print $2'});
    if [[ $current == "master" ]] || [[ $student_branch != $current ]]; then
        error "Branch invalida. Reconfigure seu git.";
        exit;
    fi
}

function add_unstaged_files
{
    excluded=("base.sh" "referencia.md" "encerrar.sh");
    files=();
    file_data=$(ls);
    while read -r line;
    do
        files+=("$line");
        git add "$line";
    done <<< "$file_data";

    for f in "${files[@]}"; do
        for excluded_file in "${excluded[@]}"; do
            if [[ $f == $excluded_file ]]; then
                echo -e "[${YEL}-${END}] Pulando arquivo '${excluded_file}'";
                git reset HEAD "${f}" > /dev/null 2>&1;
                break;
            fi
        done
    done

    n_added=$(git status 2> /dev/null | grep -oP 'modified?|new file' | wc -l);
    echo  -e "[${YEL}*${END}] Foram adicionados ${n_added} arquivos para o commit.";
}


function create_commit
{
    echo -n -e "[${YEL}*${END}] Criando commit: ";
    git commit -m "$1" > /dev/null 2>&1;
    if [[ $? == 0 ]]; then
        echo -e "${GRN}SUCESSO${END}";
    else
        echo -e "${RED}FALHOU${END}";
    fi
}

function push_remote
{
    echo -n -e "[${YEL}*${END}] Enviando conteudo ao repositorio remoto: "
    git push origin $(cat ${lock_file}) > /dev/null 2>&1;
    if [[ $? == 0 ]]; then
        echo -e "${GRN}SUCESSO${END}";
    else
        echo -e "${RED}FALHOU${END}";
    fi
}

check_branch;
add_unstaged_files;
create_commit "$commit_msg";
push_remote;
