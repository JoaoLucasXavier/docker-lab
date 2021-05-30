-> REMOVE UM CONTAINER -
- CLI: docker container rm container
- CLI: docker container rm container1

-> REMOVE CONTAINERS INATIVOS -
- CLI: docker container prune

-> REMOVER CONTAINER DE FORMA AUTONATIZADA
- CLI: docker container rm $(docker container ls -aq) -f
- CLI: docker run --rm image_name | Apaga o container assim que sairmos do mesmo
