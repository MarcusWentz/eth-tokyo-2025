# eth-tokyo-2025

## Foundry

### Install Contract Libraries

#### prb-math

```shell
forge install PaulRBerg/prb-math@release-v4 --no-commit
```

### Test values

```shell
forge test
```

### Deploy Contract

```shell
forge create src/Counter.sol:Counter \
--private-key $devTestnetPrivateKey \
--rpc-url $baseSepoliaHTTPS \
--etherscan-api-key $basescanApiKey \
--broadcast \
--verify 
```

### Contract Deployment Base Sepolia

https://sepolia.basescan.org/address/0xf13c7353b23a49150a7760fadec79667ca526ffc#code