dilmacoin
=========

Compilando dilmacoin-qt

    sudo apt-add-repository ppa:bitcoin/bitcoin
    sudo apt-get update
    sudo apt-get install qt4-qmake libqt4-dev build-essential libboost-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev libssl-dev libdb4.8++-dev libminiupnpc-dev libqrencode-dev git 
    git clone https://github.com/Dilmacoin/dilmacoin.git
    cd dilmacoin

Abra o arquivo bitcoin-qt.pro e procure pelas linhas:

vá para a linha 14 onde está:

    USE_QRCODE=1
    
edite para 

    USE_QRCODE=0

Vai estar algo assim:

    RELEASE=1
    USE_QRCODE=0
    USE_UPNP=1

Salve o arquivo e execute:

    qmake-qt4

agora abra o arquivo Makefile:

vá para a linha 19 onde deve estar 

    LIBS		= $(SUBLIBS) BLAH BLAH BLAH
    
adicione -lz -ldl ao final da linha, deve ficar algo como:

    LIBS	= $(SUBLIBS) BLA BLA BLA ........ -lQtNetwork -lQtCore -lz -ldl

adicione mais uma linha depois dessa com:

    LDLFLAGS="-lz -ldl ${LDLFLAGS}"

salve o arquivo.
execute:

    make

seja feliz.

