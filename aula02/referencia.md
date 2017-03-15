Hacking the Linux Shell - Aula 02

# Aula de variaveis em Shell

## Definicao de variaveis
Variaveis em shell assemelham-se a variaveis de qualquer outra linguagem de programacao, altera-se, pois, somente a sintaxe.
Segue abaixo um exemplo de definicao de variavel em shell:
```bash
nome="Andre";  # definir uma string
echo $nome;
Andre

idade=22;  # definir um numero integro
echo "Me chamo $nome e tenho $idade anos.";
Me chamo Andre e tenho 22 anos.
```

### A sintaxe de definicao de variaveis em shell
A sintaxe da definicao de variaveis em shell pode ser chata para o iniciante, pois a mesma *NAO ACEITA ESPACOS*, como demonstra o exemplo:
```bash
nome="Andre";  # correto
nome = "Andre";  # ERRADO! NAO FUNCIONA!
```

Como demonstrado, as variaveis nao podem ter espaco entre o simbolo de _=_ que as define. *Nunca esqueca disso, programador*.

### Referencia de variaveis
Para referenciar o valor contido em uma variavel, usa-se o simbolo '_$_'.

    Observacao: Nao se utiliza '_$_' para a definicao, somente para referenciar valores contidos nas variaveis.

```bash
rua="Rua Marechal Deodoro, 567"  # definicao
echo "Eu moro na $rua"  # referencia ao valor
```

## Recebendo entrada de dados durante a execucao do script
Definir variaveis eh um dos recursos mais utilizado por programadores, entretanto, muitas vezes, para adicionar dinamicidade para o script, deve-se receber input (entrada) de dados durante a execucao. Nao seria pratico para o programador, ter que alterar os valores do seu codigo-fonte toda vez que desejar uma saida diferente. Para isso, conheceremos a chamada _read_.

### Novo comando: read
A chamada read pode ser usadad para receber dados e inseri-los diretamente em uma variavel, segue exemplo:
```bash
#!/bin/bash
echo -n "Digite seu nome: "  # -n impede a quebra de linha
read nome  # recebe dados ate o usuario teclar ENTER

echo "Ola, $nome.";  # cumprimenta o usuario baseado no valor recebido na chamada read
exit 0;
```

## Especies de variaveis nativas (built-in) do bash

### Comprimento de variaveis
Para medir o comprimento de uma variavel, seja ela string ou uma array, utiliza-se o simbolo _#_, como demonstra o trecho a seguir:
```bash
nome="Andre";
echo "Andre tem ${#nome} letras.";
Andre tem 5 letras.
```

### Variaveis de argumentos: $1, $2, $3
As variaveis $1, $2, $3 referem-se aos argumentos passados pelo script. Note essa caracteristica com o trecho a seguir:
```bash
./script.sh "A" "B" "C"
```
Neste exemplo, o $1 tera o valor "A", o $2 tera o valor "B" e o $3 tera o valor "C".

### Variavel de PID
Eh possivel retornar o PID (Process ID) do shell script (ou do ultimo processo aberto pelo shell script) utilizando-se da variavel $$, segue exemplo pratico:
```bash
#!/bin/bash
echo "Este script tem PID $$";
Este script tem PID 24824
```

### Variaveis em lacoes de repeticoes
Para iterar-se sobre uma variavel array com varios elementos, usa-se o simbolo _@_ para representar o indice de cada elemento dentro do laco de repeticao.
```bash
array1=(1 2 3);
array2=("Andre" "Bianca" "Ronaldo");

for integer in "${array1[@]}"; do
    echo "${integer}: ${array2[$integer]}";
done

1: Andre
2: Bianca
3: Ronaldo
```


## Exercicio 01
Utilizando os conhecimento empreendidos na aula 01 e 02, desenvolva um script que defina uma variavel 'altura' e 'peso' com qualquer valor e imprima-os na tela usando 'echo'. Use os exemplos acima como base. Salve o arquivo como 'massa_corporal.sh' e prossiga.


## Exercicio 02
Copie o codigo do exercicio 01 utilizando:
```bash
cp massa_corporal.sh massa_corporal_read.sh
```

Agora reforme o codigo de forma que, ao inves de definicao estatica dos valores, utilize da chamada read para receber os valores dinamicamente durante a execucao, conforme o exemplo acima.

*Nao esqueca de adicionar 'echo' antes de chamar read, para que o usuario saiba qual valor ele estara inserindo*
Concluido o exercicio, salve-o e prossiga.

## Exercicio 03
Construa um shell script para contar o numero de caracteres que existem na frase "All your base are belong to us." utilizando o metodo nativo de contagem de comprimento de variaveis do bash.

    Se houver dificuldade para realizar esse script, consulte o _base.sh_

## Final de aula
Para finalizar a aula e enviar os exercicios realizados para o repositorio remoto, execute o script '_encerrar.sh_'
```bash
./encerrar.sh
```
