# NFT Vouchers

NFT smart contracts to create vouchers for tokens. The NFTs are issued on testnet as incentive for mainnet tokens.

Based on Foundry.

## Usage

### Install

First, install foundry. The simplest option is using [foundryup](https://book.getfoundry.sh/getting-started/installation).

### Setup account for broadcasting by importing your private key

```shell
$ cast wallet import --interactive MY_WALLET_NAME
```

### Build

```shell
$ forge build
```

### Deploy NFT contracts

```shell
$ forge script script/VoucherNFT.s.sol:VoucherNFTScript --broadcast -vvvv --rpc-url reticulum --account MY_WALLET_NAME
```

### Test

```shell
$ forge test
```

### Transfer NFTs

This script transfers NFTs from a sender to multiple recipients.
First, setup the input data in `script/inputData/transfer.json` including
- the NFT address
- sender
- list of recipients

Then, dry-run the script to check the simulated logs and on-chain traces:

```shell
$ forge script script/Transfer.s.sol -vvvv --rpc-url reticulum --account MY_WALLET_NAME
```

Check the output. If everything looks good, run it again with the `--broadcast` and `--slow` flags to submit the transactions on chain and wait for the server to update the nonce after each transaction:

```shell
$ forge script script/Transfer.s.sol -vvvv --rpc-url reticulum --account MY_WALLET_NAME --broadcast --slow
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
