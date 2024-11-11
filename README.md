# NFT Vouchers

NFT smart contracts to create vouchers for tokens. The NFTs are issued on testnet as incentive for mainnet tokens.

Based on Foundry.

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
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

### Deploy

```shell
$ forge script script/VoucherNFT.s.sol:VoucherNFTScript --broadcast -vvvv --rpc-url reticulum --account deployer
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
