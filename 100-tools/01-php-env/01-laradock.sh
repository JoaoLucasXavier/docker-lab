:'

- LARADOCK-
-> http://laradock.io/
-> https://github.com/laradock/laradock
-> https://www.youtube.com/watch?v=6XfZLqoywz4
-> https://www.youtube.com/watch?v=lKhlG4xHKGM


- STEPS PHP ENVIRONMENT (PHP, APACHE, MYSQL, PHPMYADMIN)-
-> CLI: git clone git@github.com:laradock/laradock.git | Path: /home/lucasxavier/workspace/
-> CLI: cd laradock
-> CLI: cp env-example .env | Arquivo que possui configurações senssíveis (nginx, apache, portas, user/pass mysql, etc)
-> FILE: docker-compose.yml | Arquivo faz uso das configuracoes ".env", através das variáveis globais.
-> CLI UP CONTAINER: docker-compose up -d apache2 mysql phpmyadmin
-> CLI: docker container ls
-> CONFIG PATH APACHE2: apache2/sites/default.apache.conf | Onde configuramos o DocumentRoot, VirtualHosts etc
    - O path DocumentRoot /var/www/ mostrada nas configurações está sincronizada com o path /home/lucasxavier/workspace
    - Logo o path do projeto será: /home/lucasxavier/workspace/index.php
-> ACESSOS:
    - PhpMyAdmin: http://localhost:8081/


- O QUE FAZER AO EFETUAR MUDANÇAS NO LARADOCK -
-> CLI: docker-compose build apache2 | Reconstrua o contêiner ao modificar conf do apache2
-> CLI: docker-compose up | Reinicie os contêineres


- OBS -
-> o Diretório raiz dos projetos PHP pode ser configurado na variável de ambiente APP_CODE_PATH_HOST (arquivo .env).

'
