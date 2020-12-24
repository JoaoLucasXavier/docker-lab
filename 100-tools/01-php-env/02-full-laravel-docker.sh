:'
DEV ENVINRONMENT LARAVEL, MYSQL
-------------------------------

-- CRIAR PROJETO LARAVEL --
-> CLI: composer create-project laravel/laravel project_name

-- CREATE FILES -
-> FILE: project_name/Dockerfile
-> FILE: project_name/docker-compose.yml

-- DOCKER HUB --
-> https://hub.docker.com/
-> wyveo/nginx-php-fpm | https://hub.docker.com/r/wyveo/nginx-php-fpm
-> mysql | https://hub.docker.com/_/mysql

-- NGINX --
-> DOCUMENT ROOT DEFAULT: /usr/share/nginx/html
-> URI: localhost:8080

- CLI -
-> docker-compose up -d | path: /project_name
-> docker-compose up -d --build | path: /project_name | Quando alteramos algo no container
-> docker exec -it api_movies_rating_1 bash
-> ping mysql_movies_rating | Testar no container a network criada

-- RUN CONTAINER --
-> cd /usr/share/nginx/
-> ln -s public/ html

-- GERAR IMAGEM E PUBLICAR NO DOCKER HUB --
-> docker build -t lucasxavier000/laravel-image-movies-rating:latest . | Gera imagem de acordo com as configuraçẽos do docker-compose.yml
-> docker login
-> docker push lucasxavier000/laravel-image-movies-rating:latest


-----------------
DOCKER FILE
-----------------
FROM wyveo/nginx-php-fpm:latest
WORKDIR /usr/share/nginx
RUN rm -rf /usr/share/nginx/html
COPY . /usr/share/nginx
RUN chmod -R 775 /usr/share/nginx/storage/*
RUN ln -s public/ html


-----------------
DOCKER COMPOSER
-----------------
version: '3'

services:
  movies_rating:
    build: .
    ports:
      - "8080:80"
    volumes:
      - ./:/usr/share/nginx
    networks:
      - network_movies_rating

  mysql_movies_rating:
    image: mysql:8.0.22
    ports:
      - "3306:3306"
    volumes:
      - .docker/dbdata:/var/lib/mysql
    environment:
      MYSQL_DATABASE: movies_rating_api
      MYSQL_ROOT_PASSWORD: root
    networks:
      - network_movies_rating

networks:
  network_movies_rating:
    driver: bridge



'
