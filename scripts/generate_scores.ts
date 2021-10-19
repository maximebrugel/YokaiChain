import hre, { network } from "hardhat";
import { utils } from "ethers";
import fs from "fs";

async function main(): Promise<void> {
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

  const YokaiChainFactory = await hre.ethers.getContractFactory("YokaiChainMock");
  const yokaiChain = await YokaiChainFactory.deploy(YokaiChainDescriptor.address);

  let count = 1;
  let score: string = "";
  while (count <= 8753) {
    await network.provider.send("evm_increaseTime", [Math.floor(Math.random() * 10000000)]);
    await network.provider.send("evm_mine");
    await yokaiChain.create(1, { value: utils.parseEther("1") });

    const params = await YokaiChainDescriptor.getSVGParams(yokaiChain.address, count);
    const newScore = await YokaiChainDescriptor.getScore(params);
    score += newScore.toString() + ";";
    count++;
  }
  await fs.writeFileSync("score.txt", score);
}

// We recommend this pattern to be able to use async/await everywhere and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error: Error) => {
    console.error(error);
    process.exit(1);
  });
