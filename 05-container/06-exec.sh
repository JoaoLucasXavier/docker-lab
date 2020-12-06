:'


- RODA UM COMANDO EM UM CONTAINER QUE ESTÁ EM EXECUÇÃO -
-> CLI: docker container exec [OPTIONS] CONTAINER COMMAND [ARGS...]
-> CLI: docker container start <uuid>
-> CLI: docker container exec <uuid> ls -la
-> Others examples:
    - CLI: docker container exec <uuid> uname -a
    - CLI: docker container exec <uuid> git --version
    - CLI: docker container exec 0997385281d5 cat /etc/hosts


- OBS -
-> Em alguns momentos vamos precisar executar comandos em un container mas não queremos entrar dentro dele
-> Então podemos usar o (exec)


'
