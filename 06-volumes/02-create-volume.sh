:'


- EXEMPLO CRIAÇÃO CONTAINER COM VOLUME -
-> PHP: docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp php:7.4-cli php your-script.php
-> NGINX: docker run --name some-nginx -v /some/content:/usr/share/nginx/html:ro -d nginx


- STEPS RUN CONTAINER UBUNTU WITH VOLUME -
-> CREATE FOLDER: /home/general | Criar pasta no container "temp_ubuntu"
-> CREATE FOLDER: /home/lucasxavier/docker | Criar pasta no pc local
-> CLI: docker pull ubuntu
-> docker container run -a stdin -a stdout -i -t --name temp_ubuntu -v /home/lucasxavier/docker:/home/general ubuntu /bin/bash | Mapeia a pasta do contaimer origem (/home/general) com a destino (/home/lucasxavier/docker)
-> CLI: docker container attach <uuid> | Caso percamos o (STDIN) e (STDOUT) do container temp_ubuntu
-> CLI: docker volume ls
-> CLI: docker volume inspect <uuid>


'
