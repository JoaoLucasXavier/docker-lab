:'

- CRIAR CONTAINER A PARTIR DE UMA IMAGEM -
-> CLI: sudo docker run image-name
-> CLI: sudo docker run --name hello hello-world


- EXEMPLO CRIAÇÃO CONTAINER NGINX -
-> CLI: docker container run --publish 8080:80 --detach nginx
    * --publish ou -p -> Torna publica algumas portas que estão dentro do container
    *  8080:80 [host_port:container_port] -> Mapea a porta do container e host
    * --detach ou -d -> Roda o container em background, não deixar o terminal preso no processo do docker


- EXEMPLO CRIAÇÃO CONTAINER NGINX COM NOME ESPECÍFICO -
-> CLI: docker container run --publish 8080:80 --detach --name <webserver> nginx
    * --publish ou -p -> Torna publica algumas portas que estão dentro do container
    *  8080:80 [host_port:container_port] -> Mapea a porta do container e host
    * --detach ou -d -> Roda o container em background, não deixar o terminal preso no processo do docker
    * --name ou -n -> Dar um nome de indentificação ao container


- OBS -
-> Quando o container está rodando ocupando uma porta(ex: 8080), outro container deve rodar em outra porta
-> Podemos rodar quantas instâncias for necessárias de container docker
-> Como auternativa podemos usar o CLI: "docker container run" que cria e já roda o container

'
