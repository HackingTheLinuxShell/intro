Hacking the Linux Shell - Aula 01

# Comecando a programar em shell

## Criando um arquivo
Para criar um arquivo utilizando o linux shell, use o comando touch, como no exemplo a seguir:
```bash
touch arquivo
```

## Executando scripts
Para executar um arquivo no shell linux, usando como exemplo o arquivo acima descrito, pode acontecer da seguinte forma:
```bash
./arquivo  # executa o arquivo usando o bash
```

## Shebang
Shell scripts sao executados pelo bash, que geralmente esta situado na pasta /bin, portanto, o caminho padrao do bash se da no /bin/bash;
Sabendo disto, podemos pressupor que o seguinte comando tambem funcionaria para executar shell scripts:
```bash
/bin/bash arquivo  # tambem executa o arquivo
bash arquivo  # executa o arquivo se /bin estiver na variavel PATH do sistema
```

Por padrao, o terminal bash executara qualquer arquivo que nao especificar singularmente qual interpretador que deve ser usado.
Supondo que temos um script em Python (uma linguagem de programacao script), surgirao erros se nao houver definicao de shebang.
Exemplo:
```bash
./arquivo.py
arquivo.py: command not found: print("Hello World")
```

Para ultrapassar este problema, apresento-lhe a shebang. O shebang se caracteriza por ser a primeira linha do script, segue exemplos de shebang:
```bash
#!/bin/bash     #  ----> coloque isto em um script shell para informar ao sistema que ele deve invocar o bash para executar o script
#!/usr/bin/env python    # define que o script deve ser invocado usando o python, e nao o bash
#!/usr/bin/env ruby    # define que o script deve ser invocado usando o ruby, e nao o bash nem o python
```


## Primeiro script
Introduzido o conceito de shebang, voce esta apto a criar o seu primeiro shell script. Segue abaixo um exemplo de shell script Hello World:

```bash
#!/bin/bash
echo "Hello World";
exit;
```

### Novo comando: echo
O comando 'echo' tem a funcao de escrever uma STRING (sequencia de caracteres) para a saida padrao do terminal (STANDARD OUTPUT, stdout)

    Exemplo de uso:
    user@pc$ echo "This is a shell script.";
    This is a shell script.


### Novo comando: exit`
O comando 'exit' tem a funcao de sair do script. Pode acompanhar um numero, fazendo com que este seja seu codigo de retorno.

    Exemplo de uso:
    exit 0;  # o script termina retornando o valor 0
    exit 1;  # o script termina retornando o valor 1

Salve o arquivo com o nome "HelloWorld.sh" e execute-o utilizando qualquer metodo lecionado acima.

## Final de aula
Para finalizar a aula e enviar os exercicios realizados para o repositorio remoto, execute o script '_encerrar.sh_'
```bash
./encerrar.sh
```
