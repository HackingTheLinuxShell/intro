Hacking the Linux Shell - Aula 06

# Aula de Return Code

## O que eh return code
Return code significa "Codigo de Retorno"; Em sintese, todo programa ao executar sua ultima instrucao logica, no momento em que se fecha, devolve ao sistema operacional um valor numerico integral igual ou diferente a 0.

Em regra, 0 significa que tudo ocorreu bem e que a saida do programa foi limpa.
Qualquer numero diferente de 0 significa que ocorreram erros ou que o comando nao pode efetuar todas suas operacoes devidas.
```bash
echo "Andre"
Andre
echo $?
0

cat AAAAAAAA  # arquivo nao existe, vai acontecer erro
cat: AAAAAAAA: no such file or directory
echo $?
1
```

Como demonstrado acima, em bash, a variavel "_$?_" detem o return code do *ULTIMO COMANDO EXECUTADO* (detalhe importante)

## Utilidade e uso
Pode parecer que nao, mas o codigo de retorno eh um dos parametro que eu mais exploro durante meus scripts. A verificacao de sucesso fica extremamente simples.
```bash
diretorio="teste";
echo -n -e "Criando diretorio: ";
mkdir $diretorio;
if [[ $? != 0 ]]; then
    echo "Erro criando diretorio";
else
    echo "Diretorio $diretorio criado com sucesso!";
fi
```

## Exericio 01
Crie um shell script para criar uma estrutura de diretorios, obedecendo esta hierarquia:

        Arquivos/
        |____ Programas/
        |____ Downloads/
        |____ Imagens/
        |____ Videos/


_Caso haja dificuldade para realizacao do script, consulte o script de base 'base.sh'_


## Final de aula
Para finalizar a aula e enviar os exercicios realizados para o repositorio remoto, execute o script '_encerrar.sh_'
```bash
./encerrar.sh
```
