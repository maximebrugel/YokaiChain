import hre, { network } from "hardhat";
import fs from "fs";
import { Contract, utils } from "ethers";
import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/dist/src/signer-with-address";

import { Signers } from "./types";

describe("Unit tests", function () {
  before(async function () {
    this.signers = {} as Signers;

    const signers: SignerWithAddress[] = await hre.ethers.getSigners();

    this.signers.admin = signers[0];
  });

  describe("Test", function () {
    beforeEach(async function () {
      const EyesParts1Factory = await hre.ethers.getContractFactory("EyesParts1");
      const EyesParts1 = await EyesParts1Factory.deploy();
      const EyesParts2Factory = await hre.ethers.getContractFactory("EyesParts2");
      const EyesParts2 = await EyesParts2Factory.deploy();

      const AccessoryDetailsFactory = await hre.ethers.getContractFactory("AccessoryDetail");
      const BackgroundDetailsFactory = await hre.ethers.getContractFactory("BackgroundDetail");
      const BodyDetailsFactory = await hre.ethers.getContractFactory("BodyDetail");
      const EarringsDetailsFactory = await hre.ethers.getContractFactory("EarringsDetail");
      const EyebrowDetailFactory = await hre.ethers.getContractFactory("EyebrowDetail");

      const EyesDetailsFactory = await hre.ethers.getContractFactory("EyesDetail", {
        libraries: {
          EyesParts1: EyesParts1.address,
          EyesParts2: EyesParts2.address,
        },
      });

      const HairDetailsFactory = await hre.ethers.getContractFactory("HairDetail");
      const MarkDetailsFactory = await hre.ethers.getContractFactory("MarkDetail");
      const MaskDetailsFactory = await hre.ethers.getContractFactory("MaskDetail");
      const MouthDetailsFactory = await hre.ethers.getContractFactory("MouthDetail");
      const NoseDetailsFactory = await hre.ethers.getContractFactory("NoseDetail");

      const AccessoryDetail = await AccessoryDetailsFactory.deploy();
      const BackgroundDetail = await BackgroundDetailsFactory.deploy();
      const BodyDetail = await BodyDetailsFactory.deploy();
      const EarringsDetail = await EarringsDetailsFactory.deploy();
      const EyebrowDetail = await EyebrowDetailFactory.deploy();

      const EyesDetail = await EyesDetailsFactory.deploy();
      const HairDetail = await HairDetailsFactory.deploy();
      const MarkDetail = await MarkDetailsFactory.deploy();
      const MaskDetail = await MaskDetailsFactory.deploy();
      const MouthDetail = await MouthDetailsFactory.deploy();
      const NoseDetail = await NoseDetailsFactory.deploy();

      const YokaiChainDescriptorFactory = await hre.ethers.getContractFactory("YokaiChainDescriptorMock", {
        libraries: {
          AccessoryDetail: AccessoryDetail.address,
          BackgroundDetail: BackgroundDetail.address,
          BodyDetail: BodyDetail.address,
          EarringsDetail: EarringsDetail.address,
          EyebrowDetail: EyebrowDetail.address,
          EyesDetail: EyesDetail.address,
          HairDetail: HairDetail.address,
          MarkDetail: MarkDetail.address,
          MaskDetail: MaskDetail.address,
          MouthDetail: MouthDetail.address,
          NoseDetail: NoseDetail.address,
        },
      });
      const YokaiChainDescriptor = await YokaiChainDescriptorFactory.deploy();

      const YokaiChain = await hre.ethers.getContractFactory("YokaiChainMock");
      this.yokaiChain = await YokaiChain.deploy(YokaiChainDescriptor.address);
    });

    it("Mint specific Item", async function () {
      this.timeout(4000000);
      await this.yokaiChain.createTest(17, 1, 1, 1, 14, 22, 10, 1, 6, 1);
      const detail = await this.yokaiChain.details(1);
      const nft = await this.yokaiChain.tokenURI(1);

      const bufJson = Buffer.from(nft.substring(29), "base64");
      //console.log(bufJson.toString());
      const jsonObj = JSON.parse(bufJson.toString());
      const bufSvg = Buffer.from(jsonObj.image.substring(26), "base64");
      await fs.writeFileSync("yokais/" + 1 + "_yokai.svg", bufSvg.toString());

      console.log("= > at ", detail.timestamp.toString());
    });
  });
});
