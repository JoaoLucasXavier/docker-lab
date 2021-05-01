:'

- DOCKER CONTAINER COMMIT -
-> CLI: docker container commit -h | Cria uma nova imagem a partir de um container
-> ABOUT: docker container commit [OPTIONS] container [REPOSITORY[:TAG]]
-> ABOUT: docker container commit -m "MY MESSAGE" <uuid> name_image


- GERANDO NOVA IMAGEM DOCKER -
-> CLI: docker container run -a stdin -a stdout -i -t --name myubuntu ubuntu /bin/bash
-> CONTAINER CLI: apt install git | Instalar o git no container myubuntu
-> CONTAINER CLI: git --version
-> CLI: docker container commit -m "Image ubuntu com git instalado" 704d2a1fb364 ubuntu_com_git
-> CLI: docker image ls | Será listada a nova imagem "ubuntu_com_git"


- GERANDO UM CONTAINER DOCKER A PARTIR DA NOVA IMAGEM -
-> CLI: docker container run -a stdin -a stdout -i -t --name new_ubuntu ubuntu_com_git /bin/bash
-> CONTAINER CLI: git --version


'
