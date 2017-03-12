Hacking the Linux Shell - Aula 03

# Aula de Condicionais em Shell

## Condicional
Condicional na programacao define-se por estabelecer uma condicao logica que definira o rumo pela qual o programa se conduzira e executara os codigos devidos.
Shell script nao eh diferente. Podemos definir o controle do fluxo do codigo utilizando-se deste instituto, segue exemplo:
```bash
#!/bin/bash
n=0;
if [[ n -eq 0 ]]; then
    echo "A variavel 'n' tem o valor 0.";
else
    echo "A variavel 'n' nao tem o valor 0.";
fi
```
No exemplo acima, se a variavel _n_ conter o valor 0, o script redirecionara o fluxo de execucao de comando para a linha que imprime a string "A variavel 'n' tem o valor 0.", caso contrario, seria impresso a string do outro 'echo'.

## Operandos

### Igualdade
```bash
if [[ $COND == $VALOR ]]; then
    echo "COND == VALOR";
fi

if [[ $COND -eq $VALOR ]]; then
    echo "COND == VALOR";
fi
```

### Diferenca
```bash
if [[ $COND != $VALOR ]]; then
    echo "COND != VALOR";
fi
```

### Maior e Maior ou Igual
```bash
if [[ $COND > $VALOR ]]; then
    echo "COND > VALOR";
fi

if [[ $COND -gt $VALOR ]]; then
    echo "COND > VALOR";
fi

if [[ $COND >= $VALOR ]]; then
    echo "COND >= VALOR";
fi
```

### Menor e Menor ou igual
```bash
if [[ $COND < $VALOR ]]; then
    echo "COND < VALOR";
fi

if [[ $COND -lt $VALOR ]]; then
    echo "COND < VALOR";
fi

if [[ $COND <= $VALOR ]]; then
    echo "COND <= VALOR";
fi
```

## Sintaxe do IF

### Cabecalho do IF
O cabecalho do _if_ tambem apresenta 'space-sensitivity', nao admitindo que a condicao fique sem espacos separando-a dos colchetes. Segue exemplo:
```bash
if [[ $COND1 == $VALOR ]]; then   # correto
if [[$COND1==$VALOR]]; then  #INCORRETO, NAO FUNCIONA!
if [[$COND1 == $COND2]]; then  #INCORRETO, NAO FUNCIONA!
```

### Then
Apos inicializar o _if_, depois de escrever a condicao, se da ser necessario o "_then_", na outra linha. Pode-se adotar por motivos de estetica, adicionar o ";" e escrever na mesma linha do _if_.
```bash
if [[ $COND != $VALOR ]]; then
    # CODIGO
fi

# OU

if [[ $COND != $VALOR ]]
then
    # CODIGO
fi
```

### Sintaxe *FI*nal do if
Para declarar um _if_ em shell script, o marcador '_if_' denomina o comeco, e o '_fi_', o seu final.
```bash
if [[ $COND == $VALOR ]]; then
    #  CODIGO QUE SO SERA EXECUTADO CASO A CONDICAO SEJA ATINGIDA
fi
```

### Multiplas condicoes
Para declarar uma condicional com multiplas condicoes, pode se utilizar o '_elif_', segue exemplo:
```bash
if [[ $COND == $VALOR ]]; then
    # CODIGO A SER EXECUTADO DA PRIMEIRA CONDICAO
elif [[ $COND2 == $VALOR ]]; then
    # OUTRO CODIGO A SER EXECUTADO DA SEGUNDA CONDICAO
else
    # CODIGO A SER EXECUTADO CASO NENHUMA DAS DUAS CONDICOES ACIMA SEJAM ATINGIDAS
fi
```


## Exercicio 01
Utilizando os conhecimentos de condicional, crie um shell script, de nome '*login.sh*', que simula um sistema de login.
Usando a chamada _read_, o usuario escrevera uma senha para o programa tratar se a senha suprida foi correta ou nao.

    Obs: Se estiver com dificuldade para desenvolver o script, confira o shell script de base contido nesta pasta de aula, denominado 'base.sh'



## Final de Aula
Para finalizar a aula e enviar os exercicios realizados para o repositorio remoto, execute o script '_encerrar.sh_'
```bash
./encerrar.sh
```
