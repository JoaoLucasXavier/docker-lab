:'
1)A flag docker run [--attch] ou [-a]:
    -> Permite anexar/conectar ao nosso container Ex:ubuntu:
        * STDIN: Entrada padrão |TECLADO|
        * STDOUT: Saída padrão |PROMPT/SHELL|
        * STDERR: Erros |MOSTRA ERRO NO STDOUT|
    -> --attch ou -a permite:
        * Fazer o container receber o que digitamos no terminal
        * Mostrar o que está acontecendo no container
        * Mostrar erros de execução do container.

2)Se temos um container em execução para anexar a ele, rodamos:
    -> docker container attach <uuid>
'