Hacking the Linux Shell - Aula 04

# Aula de manipulacao de saida em Shell

## Pipe
Em shell, pipe se demonstra pelo simbolo "|", sua utilidade eh passar a saida de um comando para a entrada de outro. Segue exemplo:
```bash
echo -e "Andre\nMaria" # ecoa Andre na primeira linha e Maria na segunda
Andre
Maria

echo -e "Andre\nMaria" | grep Maria # filtra a saida do echo com a palavra chave 'Maria'
Maria
```

### Novo comando: grep
O comando grep no linux pode ser utilizado para filtar a saida de um certo conjunto de dados. Essa filtragem pode ocorrer diretamente pelo comando ou utiizando os 'pipes'.
```bash
grep Maria arquivo.txt  # mostra apenas as linhas que contem a palavra Maria no arquivo 'arquivo.txt'
Maria

cat arquivo.txt | grep Maria  # a mesma coisa que o comando de cima
Maria
```


### Novo comando: cat
O comando cat tem a funcao de despejar na saida padrao o conteudo de algum arquivo do sistema operacional.
Exemplo:
```bash
echo "Conteudo de Arquivo" > arquivo.txt  # Isso cria o arquivo 'arquivo.txt'
cat arquivo.txt
Conteudo de Arquivo
```

## Redirection
A saida padrao de comandos pode tambem ser redirecionada no sentido de arquivos (ao file system do SO), utilizando determinados operadores. Prossiga a explicacao no proximo topico.

### O operador ">"
O operador "_>_" trata de guardar o conteudo do comando da esquerda para um arquivo situado a direita do operador. Segue demonstracao:
```bash
echo "Andre" > arquivo.txt  # Isso faz com que a string "Andre" seja redirecionada para o arquivo 'arquivo.txt'
```
Este operador, em regra, sempre cria um arquivo novo com os dados da saida, portanto, se ja houver um arquivo com o nome suprido pelo comando (no caso, _arquivo.txt_), o arquivo sera *SOBRESCRITO*

    Obs: Cuidado ao treinar este comando pois pode ocorrer perda de dados se nao tomar cuidado.

### O operador ">>"
O operador ">>" age de maneira semelhante ao seu irmao '_>_', entretanto, ele nao sobrescreve arquivos, ao inves disso, ele concatena a saida para o final do arquivo.
```bash
echo -e "Andre\n" >> arquivo.txt
echo -e "Maria\n" >> arquivo.txt
cat arquivo.txt
Andre
Maria
```

### O operador "<"
O operador "_<_" age de forma reversa (visualmente obvio) ao seu irmao "_>_", pois este nao manipula a saida e sim a *entrada* de dados. Melhor demonstrado a partir de exemplo:
```bash
cat < arquivo.txt
Andre
Maria
```

## Uso e utilidade da manipulacao de saida
Mais a frente do curso, introduzirei o conceito de expressoes regulares para manipulacao de dados de saida, o que ajuda muito o programador shell em seu trabalho. Por enquanto, devemos apenas nos preocupar com manipular de forma basica os tipo mais rudimentares de saida.


## Exercicio 01
Desenvolva um shell script com o nome '_verificaUser.sh_' que recebe a entrada do usuario e verifique, utilizando o grep, se o arquivo '_/etc/passwd_' contem alguma linha com a palavra fornecida pelo usuario.

    Obs: Caso haja dificuldade, consule o script de base (base.sh) na pasta da aula.


## Exercicio 02
Agora faca com que a saida do script do exercicio 01 seja redirecionada ao arquivo 'usuario.txt' e nao para a saida padrao.

## Final da aula
Feito o script da aula, execute os comandos abaixo para enviar o codigo para avaliacao do professor no repositorio remoto:
```bash
git checkout -b NomeDoAluno;
git add verificaUser.sh;
git commit -m "Exercicio da aula 04";
git push origin NomeDoAluno;
```
