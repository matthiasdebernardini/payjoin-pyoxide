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
runs:
 just run1
 just run2
find_bitcoind:
 ps aux | grep bitcoind
find_payjoin:
 ps aux | grep payjoin | grep python
rpcinfo1:
 bitcoin-cli -regtest -rpcuser="eternalearwig" -rpcpassword=TST10jV9T5naN9zUnETeeiCA0di4xmWRxmnlXW6c -rpcport=19001 getrpcinfo
rpcinfo2:
 bitcoin-cli -regtest -rpcuser="eternalearwig" -rpcpassword=TST10jV9T5naN9zUnETeeiCA0di4xmWRxmnlXW6c -rpcport=19011 getrpcinfo
createwallet1:
 bitcoin-cli -regtest -rpcuser="eternalearwig" -rpcpassword=TST10jV9T5naN9zUnETeeiCA0di4xmWRxmnlXW6c -rpcport=19001 createwallet $(petname)
createwallet2:
 bitcoin-cli -regtest -rpcuser="eternalearwig" -rpcpassword=TST10jV9T5naN9zUnETeeiCA0di4xmWRxmnlXW6c -rpcport=19011 createwallet $(petname)
createwallets:
 just createwallet1 
 just createwallet2
newaddr1:
 bitcoin-cli -regtest -rpcuser="eternalearwig" -rpcpassword=TST10jV9T5naN9zUnETeeiCA0di4xmWRxmnlXW6c -rpcport=19001 getnewaddress
newaddr2:
 bitcoin-cli -regtest -rpcuser="eternalearwig" -rpcpassword=TST10jV9T5naN9zUnETeeiCA0di4xmWRxmnlXW6c -rpcport=19011 getnewaddress
newaddrs:
 just newaddr1
 just newaddr2
generate2address1:
 bitcoin-cli -regtest -rpcuser="eternalearwig" -rpcpassword=TST10jV9T5naN9zUnETeeiCA0di4xmWRxmnlXW6c -rpcport=19001 generatetoaddress 100 bcrt1q7950q5fsnvcklwt00jg2qm7jj5uuy0thkdwssc
generate2address2:
 bitcoin-cli -regtest -rpcuser="eternalearwig" -rpcpassword=TST10jV9T5naN9zUnETeeiCA0di4xmWRxmnlXW6c -rpcport=19011 generatetoaddress 100 bcrt1q7950q5fsnvcklwt00jg2qm7jj5uuy0thkdwssc
