Hacking the Linux Shell - Aula 08

# Aula de Funcoes
Funcao em shell script nao se difere do _modus operandi_ que se utiliza em outras linguagens. Pois, entao, assume-se que a funcao tome argumentos (entrada) e seja capaz de produzir uma saida - valor de retorno.

Segue um exemplo de funcao em bash:
```bash
function hello_world
{
    echo "Hello World!";
    return 0;
}
```

## Sintaxe e chamada
A sintaxe da funcao em bash se da pela palavra _function_ acompanhada de um nome e chaves.
```bash
function func
{
     echo "Funcao em bash!";
     return 0;
}
```

Apenas declarar a funcao nao trara sua execucao, ou seja, a funcao nada mais eh do que uma especie de "planta" (no sentido da engenharia civil, mesmo), onde se pre-define uma sequencia logica de instrucoes as quais sao executadas _quando e somente_ forem invocadas.

Segue exemplo para invocar a ultima funcao criada em um shell script:
```bash
func;  # chama a funcao do codigo acima
Funcao em bash!
```

## Exercicio 01
Desenvolva um script shell que seja capaz de fazer o logging (relatorio na tela) de erros utilizando-se de funcao.

    Consulte o script _base.sh_ caso haja dificuldade em resolver esse problema.
