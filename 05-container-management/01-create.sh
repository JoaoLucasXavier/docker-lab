:'
0)Observações:
    -> Quando o container está rodando ocupando uma porta(ex: 8080), outro container deve rodar em outra porta
    -> Podemos rodar quantas instâncias for necessárias de container docker

1)Criar um container a partir de uma imagem docker:
    -> sudo docker run image-name && sudo docker run hello-world

2)Criar container do servidor Nginx:
    -> docker container run --publish 8080:80 --detach nginx
        * --publish ou -p -> Torna publica algumas portas que estão dentro do container
        *  8080:80 [host_port:container_port] -> Mapea a porta do container e host
        * --detach ou -d -> Roda o container em background, não deixar o terminal preso no processo do docker

2)Criar container do servidor Nginx - com um nome específico:
    -> docker container run --publish 8080:80 --detach --name <webserver> nginx
        * --publish ou -p -> Torna publica algumas portas que estão dentro do container
        *  8080:80 [host_port:container_port] -> Mapea a porta do container e host
        * --detach ou -d -> Roda o container em background, não deixar o terminal preso no processo do docker
        * --name ou -n -> Dar um nome de indentificação ao container
'