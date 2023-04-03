import payjoin_pyoxide

bitcoind = "https://127.0.0.1:19010"
user = "eternalearwig"
password = "TST10jV9T5naN9zUnETeeiCA0di4xmWRxmnlXW6c"
bip21 = "BITCOIN:BCRT1QSJM5A4UY50D32PRDUU3TTTSWLRH20HHR8PV6JG?amount=0.00001&pj=https://127.0.0.1:3000"
print(payjoin_pyoxide.send_payjoin(bitcoind, user, password, bip21))
