# YokaiChain

On-chain generated anime NFTs

## Deployments

YokaiChain will be deployed on Fantom and verified on Ftmscan :

| Contracts            | Explorer                                                                    |
| -------------------- | --------------------------------------------------------------------------- |
| YokaiChain           | https://ftmscan.com/address/0x59c7B16369422959eEb218c7270e3B5132cB1F28#code |
| YokaiChainDescriptor | https://ftmscan.com/address/0x59c7B16369422959eEb218c7270e3B5132cB1F28#code |
| MarkDetail           | https://ftmscan.com/address/0x122306D43788fdda0Ef6a6b802b399d7A8E71B06#code |
| NoseDetail           | https://ftmscan.com/address/0x198519d4D98901E9202EA159d5ab8BfDaB91B8f3#code |
| MouthDetail          | https://ftmscan.com/address/0xb56d7cadCC9dd8dCbE69151681ed27ed990AB0CC#code |
| HairDetail           | https://ftmscan.com/address/0x79ceeE11bbb7ad7F60C2B5d8669C5a1f3916f794#code |
| EyesDetail           | https://ftmscan.com/address/0xBb885c33E0D880c4b8866DD5393b6F9d99734C90#code |
| EyebrowDetail        | https://ftmscan.com/address/0x4C55A6fD926A1CCe2bc345Aa20B440a27Cc2100a#code |
| MaskDetail           | https://ftmscan.com/address/0x48ea724f8E1B15b0117881555681865521a871Aa#code |
| EarringsDetail       | https://ftmscan.com/address/0x0b29c3D277e147FfAcE49CB267970bB59628582a#code |
| BodyDetail           | https://ftmscan.com/address/0xe2b621D72F54E152ed31937Da64f90919F62bDF9#code |
| BackgroundDetail     | https://ftmscan.com/address/0x7e89C5421b25c731a8b22c75B4cD8f108Ed52d18#code |
| AccessoryDetail      | https://ftmscan.com/address/0x11Ae6606783ea833dCab087cD9aF8e894f6750D9#code |

### Usage

Before running any command, you need to create a `.env` file and set a BIP-39 compatible mnemonic as an environment
variable. Follow the example in `.env.example`. If you don't already have a mnemonic, use this [website](https://iancoleman.io/bip39/) to generate one.

Then, proceed with installing dependencies:

```sh
yarn install
```

### Compile

Compile the smart contracts with Hardhat:

```sh
$ yarn compile
```

### TypeChain

Compile the smart contracts and generate TypeChain artifacts:

```sh
$ yarn typechain
```

### Lint Solidity

Lint the Solidity code:

```sh
$ yarn lint:sol
```

### Lint TypeScript

Lint the TypeScript code:

```sh
$ yarn lint:ts
```

### Test

Run the Mocha tests:

```sh
$ yarn test
```

### Report Gas

See the gas usage per unit test and average gas per method call:

```sh
$ REPORT_GAS=true yarn test
```

### Clean

Delete the smart contract artifacts, the coverage reports and the Hardhat cache:

```sh
$ yarn clean
```
