# Hacking the Linux Shell

# Introducao
Este curso guiara o aluno pelo caminho do shell script.
Apesar de shell script ser uma linguagem de programacao interpretada, ela difere-se em muitos aspectos em comparacao as linguagens de script comumente encontradas hoje em dia. Sua sintaxe, perto destas ultimas, pode ser contra-intuitiva a primeiro olhar, mas com a pratica e o conhecimento bem guiado, tornar-se-a familiar diante de teus olhos.

*Termine de ler este documento ate o final, muito provavelmente algo podera parecer obscuro durante a leitura mas tudo se resolvera ate o final.*

# Como aprender
Para comecar a aula, basta ser inscrito na Organizacao "Hacking the Linux Shell" (https://github.com/HackingTheLinuxShell) e clonar o repositorio da organizacaco e criar um ramo (branch) para desenvolver os exercicios.
# Como usar o git para aprender

## Instalando o git no Linux
As instrucoes abaixo sao para distros Debian-like e/ou utilizam do gerenciador de pacotes 'apt'
```bash
root@pc# apt-get install git  # sudo se for user normal
root@pc# man git  # faca uma leitura do manual
```

## Para clonar um repositorio e comecar as aulas
```bash
user@pc$ cd ~   # vai pra /home/
user@pc$ git clone https://github.com/USUARIO/REPOSITORIO  # clona o diretorio para a pasta local
user@pc$ cd REPOSITORIO/  # entra no diretorio
user@pc$ git checkout -b TURMA1_ALUNO  # cria um ramo para desenvolver codigo sem alterar o ramo 'master'
```


## Para criar um commit e enviar ao repositorio
```bash
user@pc$ touch arquivo.sh  # crie um arquivo shell
user@pc$ echo "Conteudo e exercicios praticos" >> arquivo.sh  # faca as aulas dentro dele
user@pc$ git add arquivo.sh  # adicione as alteracoes e crie o commit
user@pc$ git commit -m "Primeira aula e exercicios praticos"  # isso fecha o commit
user@pc$ git push origin TURMA1_ALUNO  # envia o conteudo local
```

# Como funciona o curso
O curso se divide logicamente em sprints (periodos de trabalho) denominados aulas. Cada aula tera material de apoio (referencia), explicacao comentada no script de base e no final, uma proposta de pratica dos conhecimentos abordados na aula.
O aluno deve clonar o repositorio em sua maquina, ler e desenvolver o que a aula sugere em seu conteudo e apos concluida a atividade pratica, o aluno deve seguir as recomendacoes acima sobre o uso do git e criar um repositorio separado para hospedar a sua atividade individual dentro da organizacao "Hacking the Linux Shell", onde o professor responsavel tratara de corrigir e avaliar a aula, no tempo devido.
