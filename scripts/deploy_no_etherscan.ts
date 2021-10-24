import hre from "hardhat";

const delay = async (ms: number) => new Promise(res => setTimeout(res, ms));

async function main(): Promise<void> {
  console.log("Deploy YokaiChain");

  const EyesParts1Factory = await hre.ethers.getContractFactory("EyesParts1");
  const EyesParts1 = await EyesParts1Factory.deploy();
  const EyesParts2Factory = await hre.ethers.getContractFactory("EyesParts2");
  const EyesParts2 = await EyesParts2Factory.deploy();
  const accessoryDetailFactory = await hre.ethers.getContractFactory("AccessoryDetail");
  const backgroundDetailFactory = await hre.ethers.getContractFactory("BackgroundDetail");
  const bodyDetailFactory = await hre.ethers.getContractFactory("BodyDetail");
  const earringsDetailFactory = await hre.ethers.getContractFactory("EarringsDetail");
  const eyebrowDetailFactory = await hre.ethers.getContractFactory("EyebrowDetail");
  const eyesDetailFactory = await hre.ethers.getContractFactory("EyesDetail", {
    libraries: {
      EyesParts1: EyesParts1.address,
      EyesParts2: EyesParts2.address,
    },
  });
  const hairDetailFactory = await hre.ethers.getContractFactory("HairDetail");
  const markDetailFactory = await hre.ethers.getContractFactory("MarkDetail");
  const maskDetailFactory = await hre.ethers.getContractFactory("MaskDetail");
  const mouthDetailFactory = await hre.ethers.getContractFactory("MouthDetail");
  const noseDetailFactory = await hre.ethers.getContractFactory("NoseDetail");

  let accessoryDetail = await accessoryDetailFactory.deploy();
  let backgroundDetail = await backgroundDetailFactory.deploy();
  let bodyDetail = await bodyDetailFactory.deploy();
  let earringsDetail = await earringsDetailFactory.deploy();
  let maskDetail = await maskDetailFactory.deploy();
  let eyebrowDetail = await eyebrowDetailFactory.deploy();
  let eyesDetail = await eyesDetailFactory.deploy();
  let hairDetail = await hairDetailFactory.deploy();
  let mouthDetail = await mouthDetailFactory.deploy();
  let noseDetail = await noseDetailFactory.deploy();
  let markDetail = await markDetailFactory.deploy();

  let yokaiChainDescriptorFactory = await hre.ethers.getContractFactory("YokaiChainDescriptor", {
    libraries: {
      AccessoryDetail: accessoryDetail.address,
      BackgroundDetail: backgroundDetail.address,
      BodyDetail: bodyDetail.address,
      EarringsDetail: earringsDetail.address,
      MaskDetail: maskDetail.address,
      EyebrowDetail: eyebrowDetail.address,
      EyesDetail: eyesDetail.address,
      HairDetail: hairDetail.address,
      MouthDetail: mouthDetail.address,
      NoseDetail: noseDetail.address,
      MarkDetail: markDetail.address,
    },
  });
  let yokaiChainDescriptor = await yokaiChainDescriptorFactory.deploy();
  await yokaiChainDescriptor.deployed();

  // Deploy YokaiChain
  let yokaiChainFactory = await hre.ethers.getContractFactory("YokaiChain");
  let yokaiChain = await yokaiChainFactory.deploy(yokaiChainDescriptor.address);
  await yokaiChain.deployed();

  console.log("Deploy done");
}

// We recommend this pattern to be able to use async/await everywhere and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error: Error) => {
    console.error(error);
    process.exit(1);
  });
