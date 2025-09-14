# eth-tokyo-2025

## Overview 

AMM for charging and discharging batteries / energy storage

<img width="745" height="553" alt="Screenshot 2025-09-14 at 18 17 02" src="https://github.com/user-attachments/assets/d165bc2b-0cb7-4345-b495-fd3de6d73a15" />

### Slides

https://www.canva.com/design/DAGy_dmrFx4/7jljm7TahsEWkFSv6qxLMQ/edit?utm_content=DAGy_dmrFx4&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

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


