# Hacking the Linux Shell - Introduction Course

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
sudo apt-get install git  # sudo se for user normal
man git  # faca uma leitura do manual
```

## Para clonar o repositorio e comecar as aulas
```bash
cd ~   # vai pra /home/
git clone https://github.com/HackingTheLinuxShell/intro  # clona o diretorio para a pasta local
cd intro/  # entra no diretorio
```

## Para comecar a aprender no Hacking The Linux Shell
Basta executar o script '_comecar.sh_';
Ao final da execucao do script, tudo estara pronto para o inicio das aulas!

# Como funciona o curso
O curso se divide logicamente em sprints (periodos de trabalho) denominados aulas. Cada aula tera material de apoio (referencia), explicacao comentada no script de base e no final, uma proposta de pratica dos conhecimentos abordados na aula.
O aluno deve clonar o repositorio em sua maquina, ler e desenvolver o que a aula sugere em seu conteudo e apos concluida a atividade pratica, o aluno deve seguir as recomendacoes de "Final de Aula" para hospedar a sua atividade individual dentro da organizacao "Hacking the Linux Shell", onde o professor responsavel tratara de corrigir e avaliar a aula, no tempo devido.
