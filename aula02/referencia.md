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

## Exercicio 01
Utilizando os conhecimento empreendidos na aula 01 e 02, desenvolva um script que defina uma variavel 'altura' e 'peso' com qualquer valor e imprima-os na tela usando 'echo'. Use os exemplos acima como base. Salve o arquivo como 'massa_corporal.sh' e prossiga.

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

## Exercicio 02
Copie o codigo do exercicio 01 utilizando:
```bash
cp massa_corporal.sh massa_corporal_read.sh
```

Agora reforme o codigo de forma que, ao inves de definicao estatica dos valores, utilize da chamada read para receber os valores dinamicamente durante a execucao, conforme o exemplo acima.

*Nao esqueca de adicionar 'echo' antes de chamar read, para que o usuario saiba qual valor ele estara inserindo*
Concluido o exercicio, salve-o e prossiga.

## Final de aula
Para finalizar a aula e enviar os exercicios realizados para o repositorio remoto, execute o script '_encerrar.sh_'
```bash
./encerrar.sh
```
