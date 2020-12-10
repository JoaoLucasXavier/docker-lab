:'

- LARADOCK-
-> http://laradock.io/
-> https://github.com/laradock/laradock
-> https://www.youtube.com/watch?v=6XfZLqoywz4
-> https://www.youtube.com/watch?v=lKhlG4xHKGM


- STEP: PHP ENVIRONMENT (PHP, NGINX, MYSQL, PHPMYADMIN) -
-> CLI: git clone git@github.com:laradock/laradock.git | Path: /home/lucasxavier/workspace/
-> CLI: cd laradock
-> CLI: cp env-example .env
-> CLI: docker-compose up -d nginx mysql phpmyadmin
-> CLI: docker container ls


- DOCKER COMPOSER COMMANDS -
-> CLI: docker-compose build nginx | Reconstrua o contêiner ao modificar conf do nginx
-> CLI: docker-compose up -d nginx mysql phpmyadmin | Sobe os containers | Devemos informar as imagens para não executar todas do laradock
-> CLI: docker-compose restart | Para os containers que estão rodando e sobe novamente


- CRIANDO MULTIPLOS PROJETOS -
-> CREATE FOLDER: /var/www/NEWPROJECT/PUBLIC
-> CREATE FILE: nginx/sites/NEWPROJECT.conf | Adicionar documentRoot e domain
-> EDIT FILE: /etc/hosts | 127.0.0.1 NEWPROJECT.test
-> docker-compose restart


- AUTÊNTICAÇÃO -
-> PhpMyAdmin -
    - PhpMyAdmin: http://localhost:8081/ (server: mysql, name, password)
-> PDO/mysqli:
    MYSQL_VERSION=mysql | OBS: Não é localhost, sim mysql
    MYSQL_DATABASE=default
    MYSQL_USER=default
    MYSQL_PASSWORD=secret
    MYSQL_PORT=3306
    MYSQL_ROOT_PASSWORD=root


- ABOUT -
-> FILE: .env | Arquivo que possui configurações senssíveis (nginx, apache, portas, user/pass mysql, etc)
-> FILE: docker-compose.yml | Arquivo faz uso das configuracoes ".env", através das variáveis globais.
-> CONFIG PATH NGINX: nginx/sites/default.conf | Onde configuramos o DocumentRoot, VirtualHosts etc
    - O path DocumentRoot /var/www/ mostrada nas configurações está sincronizada com o path /home/lucasxavier/workspace
    - Logo o path do projeto será: /home/lucasxavier/workspace/public/index.php


- OBS -
-> o Diretório raiz dos projetos PHP pode ser configurado na variável de ambiente APP_CODE_PATH_HOST (arquivo .env).
-> Habilitar/desabilitar certificado SSL chrome: chrome://flags/#allow-insecure-localhost



'
