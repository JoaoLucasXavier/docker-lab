FROM node:15.14.0-alpine3.10

# Instala o bash etc no linux alpine
RUN apk add bash

# Diretório que será criado ao subir um container
WORKDIR /usr/app/src

# Comando que será executado para manter o processo do container ativo
CMD [ "tail", "-f", "/dev/null"]
