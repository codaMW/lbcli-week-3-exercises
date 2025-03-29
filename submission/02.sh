# Create a native segwit address and get the public key from the address.

native_segwit=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" bech32)

pubKey=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getaddressinfo $native_segwit | jq -r '.pubkey')

echo "$pubKey"
