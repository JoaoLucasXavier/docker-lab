:'
1)Rodar um container:
    -> docker container run <image>

2)Rodar container em background:
    -> docker container run --detach <image>

3)flags:
    * --publish ou -p -> Torna publica algumas portas que estão dentro do container
    *  8080:80 [host_port:container_port] -> Mapea a porta do container e host
    * --detach ou -d -> Roda o container em background, não deixar o terminal preso no processo do docker
'