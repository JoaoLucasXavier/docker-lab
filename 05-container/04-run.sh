:'


- RODAR UM CONTAINER EXISTENTE OU CRIAR E RODAR UM NOVO CONTAINER -
-> CLI: docker container run <image>
-> CLI: docker container run --detach <image>
-> CLI: docker container run -p 8080:80 -d --name ng_server nginx


- OPTIONS -
-> -d | Detashed | Container roda em background | Liberar o CLI para outras tarefas | Caso contrário container ficará em foreground
-> -a | --attach | Anexa o STDIN, STDOUT ou o STDERR ao comando
    - STDIN: Teclado | Container (Ex: container ubuntu) pode receber o que digito
    - STDOUT: Linha de comando | Podemos visualizar a saída/reposta do container
    - STDERR: Mostra os erros
-> -i | Interactive | Parecido com (-a STDIN) | Porém mantém a entrada padrão (STDIN) aberta caso não tenhamos feito um (attach)
-> -t | -tty | Permite alocar um pseudo terminal para o container | Disponibiliza um terminal para o container | Permite fazer alguma coisa no contaier usando o terminal
->


- EXEMPLO -
-> CLI: docker pull ubuntu
-> CLI: docker container run -a stdin -a stdout -i -t ubuntu /bin/bash
    - Executamos uma imagem ubuntu
    - Será executado o terminal que ficará disponível de forma interativa


'
