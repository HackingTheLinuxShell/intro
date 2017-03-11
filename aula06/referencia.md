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
