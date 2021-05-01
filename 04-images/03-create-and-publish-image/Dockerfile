FROM nginx:latest

# Cria um usuário para o container
# USER joaolucas

# Diretório padrão ao iniciar um container
WORKDIR /usr/share/nginx

# Faz a cópia de um arquivo deo computador para dentro do container
COPY html/ /usr/share/nginx/html

# Comandos que serão executados na criação da imagem
RUN apt-get update && \
  apt-get install vim -y

# Executa um comando fixo no container assim que o mesmo for startado
# Ex1: ENTRYPOINT ["echo","OI"]
# Ex2: Roda o nginx ao subir o container
ENTRYPOINT ["/docker-entrypoint.sh"]

# Executa um comando variável no container assim que o mesmo for startado
# docker run -it lucasxavier000/nginx-com-vim:latest echo "oi"
# Esse comando será substituido por echo "oi", caso executemos o comando como acima
# docker run -it lucasxavier000/nginx-com-vim:latest | Dessa forma vemos a saída do comnado
# Ex1: CMD ["echo","Hello World"]
# Ex2: CMD ["Lucas"]
# Ex3: Roda o nginx ao subir o container
CMD ["nginx", "-g", "daemon off;"]
