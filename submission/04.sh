# Create a 2-of-3 P2SH multisig address from the public keys below:

pubKey1="024bc198a88b69316952414af34105613c3617561a433a229100a0966cd631dd3d"
pubKey2="035e11024a7fa1e0ca537e0e76b15c1631486f6611c7d8187aea8f6c1ae5d30617"
pubKey3="03ce11c7b563c3d7fae916351f234eac5089ad2e42fa9e29a94ee944e00c880c66"


bitcoin-cli -regtest -rpcwallet=btrustwallet createmultisig 2 '["'$pubKey1'","'$pubKey2'","'$pubKey3'"]' | jq -r '.address'


