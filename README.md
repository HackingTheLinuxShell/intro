# Hacking the Linux Shell

# Introducao
Este curso guiara o aluno pelo caminho do shell script.
Apesar de shell script ser uma linguagem de programacao interpretada, ela difere-se em muitos aspectos em comparacao as linguagens de script comumente encontradas hoje em dia. Sua sintaxe, perto destas ultimas, pode ser contra-intuitiva a primeiro olhar, mas com a pratica e o conhecimento bem guiado, tornar-se-a familiar diante de teus olhos.

# Como aprender
Para comecar a aula, basta ser inscrito na Organizacao "Hacking the Linux Shell" (https://github.com/HackingTheLinuxShell) e criar seu proprio repositorio na Organizacao, obedecendo um formato especifico:

    ## Formato de repositorios de aluno:
        ANO_NOME-DO-ALUNO

# Como usar o git para aprender
## Para clonar um repositorio e comecar as aulas
```bash
cd ~   # vai pra /home/
git clone https://github.com/USUARIO/REPOSITORIO  # clona o diretorio para a pasta local
cd REPOSITORIO/  # entra no diretorio
git checkout -b Melhoria23  # cria um ramo para desenvolver codigo sem poluir o ramo 'master'
```


## Para criar um commit e enviar ao repositorio
```bash
touch arquivo.sh  # crie um arquivo shell
echo "Conteudo e exercicios praticos" >> arquivo.sh  # faca as aulas dentro dele
git add arquivo.sh  # adicione as alteracoes e crie o commit
git commit -m "Primeira aula e exercicios praticos"  # isso fecha o commit
git push origin master
```

# Como funciona o curso
O curso se divide logicamente em sprints (periodos de trabalho) denominados aulas. Cada aula tera material de apoio (referencia), explicacao comentada no script de base e no final, uma proposta de pratica dos conhecimentos abordados na aula.
O aluno deve clonar o repositorio em sua maquina, ler e desenvolver o que a aula sugere em seu conteudo e apos concluida a atividade pratica, o aluno deve seguir as recomendacoes acima sobre o uso do git e criar um repositorio separado para hospedar a sua atividade individual dentro da organizacao "Hacking the Linux Shell", onde o professor responsavel tratara de corrigir e avaliar a aula, no tempo devido.
