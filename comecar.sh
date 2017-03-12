#!/bin/bash

# Lock file definition
lock_file=".lock";

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

function get_student_name
{
    #  Checa a lock file
    if [[ ! -e ${lock_file} ]]; then
        error "O curso ainda nao foi iniciado."
        echo Para iniciar o curso, execute o script ./comecar.sh na pasta raiz.
        return 1;
    fi;
    cat ${lock_file};
    return 0;
}

function locked
{
    stud=$(get_student_name);
    if [[ $? == 0 ]]; then
        error "Curso ja iniciado pelo aluno $(get_student_name)";
    fi
    exit 0;
}

function new_student
{
    #  Sem double student branch
    if [[ -e ${lock_file} ]]; then
        locked;
    fi

    echo -e "[${YEL}*${END}] Criando novo perfil de estudante ...";
    echo -e -n "    [${YEL}-${END}] Digite o seu nome: ";
    read nome;

    fmt_student_name=$(echo $nome | tr ' ' '_');
    echo $fmt_student_name > "${lock_file}";
    git checkout -b ${fmt_student_name}; > /dev/null 2>&1;
    git push origin ${fmt_student_name} > /dev/null 2>&1;
    if [[ $? != 0 ]]; then
        error "Cheque no site do Hacking the Linux Shell se sua inscricao foi aprovada.";
        exit 1;
    else
        info "Inscricao de ${fmt_student_name} foi validada.";
    fi

    return 0;
}

function install_missing
{
    uid=$(id -u);
    if [[ $1 == "git" ]] && [[ $uid != 0 ]]; then
        echo "Git nao instalado. Digite sua senha sudo para instalar: ";
        sudo echo -n;
    fi
    echo -n -e "[${YEL}*${END}] Instalando git: ";
    sudo apt-get install git -y > /dev/null 2>&1;
    report_status $?;
}

function check_requirements
{
    req=("git");
    for requirement in "${req[@]}"; do
        echo -n -e "[${YEL}*${END}] Checando ${requirement}: "
        req_path=$(which ${requirement});
        req_bool=$?;
        report_status $req_bool;
        if [[ $req_bool != 0 ]]; then
            install_missing ${requirement};
        fi

   done
}


check_requirements;
new_student;
