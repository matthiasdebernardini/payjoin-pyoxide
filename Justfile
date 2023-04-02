b1 := `pwd`
b2 := `pwd`

default:
  @just --list
pip_install:
  python -m pip install maturin
run1:
 bitcoind -regtest -daemon -datadir={{b1}}/bitcoinNode1 -conf={{b1}}/bitcoinNode1/bitcoin.conf -rpcport=19001 -port=19000
run2:
 bitcoind -regtest -daemon -datadir={{b2}}/bitcoinNode2 -conf={{b2}}/bitcoinNode2/bitcoin.conf -rpcport=19011 -port=19010
find:
 ps aux | grep bitcoind
rpcinfo1:
 bitcoin-cli -regtest -rpcuser="eternal-earwig" -rpcpassword=TST10jV9T5naN9zUnETeeiCA0di4xmWRxmnlXW6c -rpcport=19001 getrpcinfo
rpcinfo2:
 bitcoin-cli -regtest -rpcuser="eternal-earwig" -rpcpassword=TST10jV9T5naN9zUnETeeiCA0di4xmWRxmnlXW6c -rpcport=19011 getrpcinfo
