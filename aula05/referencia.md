Hacking the Linux Shell - Aula 05

# Aula de Variaveis - Parte 2

## Definindo variaveis dinamicamente
Suponha que voce deve criar um script para backup de uma pasta. Este backup tem que ter a data do dia que foi realizada tal copia. Para isso, voce tera que criar uma variavel nao-estatica (dinamica) que seja definida toda vez que o script seja executado.
Segue exemplo demonstrativo:
```bash
data=$(date +%Y-%m-%d);
echo $data
2017-03-11
```

Magia negra? Nao, apenas redirecionando a saida do comando date para o espaco de memoria da variavel 'data'.

### Novo comando: date
O comando date retorna para o usuario informacoes temporais do sistema, como o ano, mes, dia e hora atual. Nao apenas em um unico formato, utilizando de argumentos especificos, voce pode manipular (ou filtrar) especificamente qual das informacoes temporais voce deseja obter. Segue exemplo:
```bash
date  # retorna toda a informacao padrao do comando
Sat Mar 11 17:28:27 -03 2017

date +%Y  # retorna apenas o ano
2017

date +%Y-%m  # retorna o ano e o mes
2017-03

date +%H:%M:%S  # retorna a hora
17:28:27
```

## Exercicio 01
Faca um shell script chamado 'queHoras.sh' que seja capaz de dizer ao usuario em que ano estamos, e que horas sao.

## Exercicio 02
Faca um shell script chamado '_logger.sh_' que redirecione a outro arquivo '_log.log_' as informacoes de data de quando o primeiro script foi executado.

    Obs: Caso haja dificuldade com os exercicios, consultar o script de base '_base.sh_' na pasta da aula.


## Final de aula
Para finalizar a aula e enviar os exercicios realizados para o repositorio remoto, execute o script '_encerrar.sh_'
```bash
./encerrar.sh
```
