Hacking the Linux Shell - Aula 07

# Aula de awk e sed
Os comandos awk e sed sao amplamente utilizados em shell scripts por seu poder manipulativo quanto a edicao de stream de dados.

## Expressao Regular (Regex)
Expressao regular, na ciencia da computacao, eh um automato  utilizado para criar padroes logicos, podendo entao, extrair uma certa forma de dados que esteja apresentada em um conjunto muito maior e diverso.


### Novo comando: sed
O comando sed significa Stream EDtor, entre suas opcoes de uso, a mais utilizada eh a de "replace" ou "substitution" em coalisao ao uso de expressoes regulares.

Exemplo de substituicao com o sed:
```bash
echo "Andre" | sed 's/A/B/'
Bndre
```

Pode-se, tambem, utilizar o argumento "-i" (in-place) para substituir dados em arquivos de texto.
```bash
echo "Andre" > arquivo.txt;  # cria arquivo e conteudo
sed -i 's/Andre/Joao/' arquivo.txt;  # substitui
cat arquivo.txt;
Joao
```

### Novo comando: awk
O comando awk, por sua vez, torna-se util por prover um interface facil e rapida de se filtar informacoes que estao dispostas em um padrao e formata-las para outro. Segue exemplo:
```bash
echo "Joao Nome" | awk {'print $2": "$1'};
Nome: Joao
```

Note, no exemplo acima, que o $1 equivale ao valor da primeira _coluna_ e o $2, da segunda.


## Desenvolvendo regex
Observe o exemplo a seguir para que aconteca uma filtragem de apenas caracteres alfabeticos:

```bash
echo "Andre123"  | grep -oP '[a-zA-Z]'  # apenas de a-z e A-Z
Andre
```

Se fosse apenas os numeros:
```bash
echo "Andre123" | grep -oP '[0-9]'  # apenas de 0 a 9
123
```

## Exercicio 01
Dada a string "All your base are 333 belong to us", desenvolva um script que filtre apenas os numeros.

## Exercicio 02
Desenvolva um script shell que leia o conteudo do arquivo `/etc/passwd` e mostre apenas os nomes de usuario.

## Final de Aula
Para concluir a aula e enviar os seus exercicios para o repositorio remoto, execute:
```bash
./encerrar.sh
```
