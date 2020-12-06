:'


- SOBRE VOLUMES -
-> São mecanismos para persistir dados gerados por um usuário nos containers docker
-> Nos permite  sicronizar os dados entre os containers e nosssa máquina local e vice versa
-> CLI: docker volume ls | Lista todos volumes criados pelos containers docker | Cada vez que um container é iniciado um novo volume é criado
-> CLI: docker volume inspect <uuid> | Retorna o ponto de montagem origem/destino do <uuid> informado


- SOBRE INSPECT -
-> CLI: docker image inspect <uuid> | Nos permite ver a configuração de volume da imagem através da chave json "Volumes" retornada
-> CLI: docker container inspect <uuid> | Nos permite ver a configuração de volume do container através da chave json "Volumes" retornada
-> CLI: docker container inspect <uuid> | KEY JSON "Mounts" | Retorna o ponto de montagem origem/destino do container
    - No caso do container temp_ubuntu não existe ponto de montagem e volume retorna null (Precisamos definir manualmente)
    - Destination: Ponto de montagem de origem
    - Source: Retorna o ponto de montagem de destino


'
