:'

- ANEXAR A ENTRADA(STDIN) E SAÍDA(STDOUT) AO CONTAINER EM EXECUÇÃO -
-> CLI: docker container attach <uuid>


- OBS -
-> Imagine o senário em que estamos utilizando um container do ubuntu de modo (interactive)
    - CLI: docker container run -a stdin -a stdout -i -t ubuntu /bin/bash
-> Em determinado momento saímos do terminal do container do ubuntu e desejamos voltar
-> Então executamos: docker container attach <uuid> | Então estaremos de voltar ao terminal do ubuntu


'
