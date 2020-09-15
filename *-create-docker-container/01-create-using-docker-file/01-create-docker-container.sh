:'
                            CIANDO IMAGENS USANDO DOCKER FILE
                            ---------------------------------

0)Observações Pre-requisitos:
  -> Ter o docker instalado!
  -> Documentação do docker caso necessário
  -> No arquivo DockerFIle podemos passar instruções/Variaveis de ambientes,etc para configurar o banco de dados ou o ambiente. |Exemplo: Senha de usuário do mysql|

1)Escolhendo a imagem docker:
  -> Acessar :: https://hub.docker.com/
  -> (mysql,nodejs, php) etc

2)Criando o arquivo do container:
  -> Acesse a pasta doprojeto
  -> crie um arquivo chamado |DockerFile|
  -> OBS: Em uma única aplicação, podemos usar mais de um container. Para isso podemos ter :: |/app/DockerFile| para servidor web && ||  |/app/db/DockerFile| para o container de banco de dados!

2)Colocar instruções no arquivo DockerFile:
  -> FROM image_name :: Nome do container - Exemplo |FROM mysql|
  -> ENV nome_variavel_ambiente :: Variaveis de ambiente para configuracoes container - Exemplo |ENV MYSQL_ROOT_PASSWORD my_password|


3)Construir a docker imagem:
  -> Navegar até a raiz do projeto :: Exemplo: Caso for uma db docker até a pasta |/app/db/| caso um docker de aplicação |/app/|
  -> Command for MYSQL :: |docker build -t mysql-image -f DockerFile .|

  -> Flags:
    - -t :: Defini um nome a nossa imagem = Exemplo -t |mysql-image|
    - -f :: Para especificar o path do arquivo DockerFile
    - . || Especificamos que a imagem docker está sendo construida na pasta atual. OBS: No contexto do Command for MYSQL: Estamos em |/app| ciando a imagem docker em |/app|, porem o DockerFile do DB estpa em /app/db/DockerFile|

4)Criar container para usar as docker imagens criadas:
  -> Command for MYSQL :: docker run -d --rm --name mysql-container mysql-image

  > Flags:
    - -d :: Detet, Faz com que o comando seja executado em background. Nosso terminal não fica preso na exibição de log da execução.
    - --rm :: Remove container com mesmo nome caso exista.
    - --name :: Especifica que subsequentemente vai ser declarado o nome do container a ser criado (O nome do container e definido por nós)
    - mysql-image :: No contexto do comando |Command for MYSQL|, espedificando a imagem docker que será usada no container.


5)Executar comandos em um container que está rodando:
  -> Command for MYSQL: |docker exec -i mysql-container mysql -uroot -iamprogramemer < api/db/script.sql| - |Executa comandos sql dentro do docker container mysql|

  -> Flags:
    - -i :: Especifica que estamos executando um comando no modo interativo (Precisamos usar esse comando em processos interativos como o shell). -i faz com que o comando não seja finalizado antes que a execução seja concluida.


sudo docker exec -it mysql-container mysql -u lucasxavier -p

sudo docker exec -it mysql-container mysql -uroot -p


--------------------------
CONTINUE

https://www.youtube.com/playlist?list=PLbA-jMwv0cuVRs8qkXKkeOuL80bdiQ96D

'


