import payjoin_pyoxide

bitcoind = "https://127.0.0.1:19001"
user = "eternalearwig"
password = "TST10jV9T5naN9zUnETeeiCA0di4xmWRxmnlXW6c"
amount_arg = "1000"
endpoint_arg = "https://127.0.0.1:3000"
print(payjoin_pyoxide.receive_payjoin(bitcoind, user, password, amount_arg, endpoint_arg))
