import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/dist/src/signer-with-address";
import { Fixture } from "ethereum-waffle";

import { YokaiChain } from "../typechain";

declare module "mocha" {
  export interface Context {
    yokaiChain: YokaiChain;
    loadFixture: <T>(fixture: Fixture<T>) => Promise<T>;
    signers: Signers;
  }
}

export interface Signers {
  admin: SignerWithAddress;
}
