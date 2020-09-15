:'
    1)O que é container?
        - Pense em uma aplicaçao: Ex(Java, php, C# etc):
            > Essas aplicações precisam de bibliotecas, servidores, binários, etc
        - Um container, pega determinada aplicação e suas dependências e transforma em um (binário), que é um container
        - O container possui tudo que precisamos para nossa aplicação funcionar
        - Caso a aplicação de um container precise conversar com o KERNEL do SO, Vai utilizar o nernel da máquina host onde o docker está sendo executado.
        - Um único kernel pode gerenciar uma infinidade de containers. Ex: 20, 30 etc container em uma máquina.
        - Aplicação de um container conversa diretamente com o kernel da máquina host onde está instalado o Container Engine (docker)

    2)O que container nos propociona?
        - Redução de custo.
        - Portabilidade:
            > É possível pegar um container que está rodando em um red hat linux é colocar em outro servidor que possui o Container Engine (docker)
            > Ou seja, é possível sem grandes dificuldade fazer a portabilidade de imagens de container entre docker em diferentes sistemas operacionais.
            > Uma dos motivos da fácil portabilidade, é que os binários dos container são bem menores que VMs, o que facilitam muito.

    3)Pode-se fazer comparação de CONTAINER com VM?
        - Sim, porém na VM é virtualizado o SO inteiro, e no container virtualizado somente aplicações.
        - VM se comparando aos containers, desperdiça muitos recursos de uma máquina



    *)OBS:
        - HyperVisor:
            > Virtualbox
            > VMware
            > etc
        - Container Engine:
            > Quem vai gerenciar container.
            > Ex: Docker
'