import hre from "hardhat";
import { Contract } from "ethers";
import fs from "fs";

interface Item {
  name: string;
  proba: string;
  svg: string;
}

interface Proba {
  name: string;
  items: Item[];
}

let bodyDetailConst: Contract;

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

  // Generate JSON Proba
  bodyDetailConst = BodyDetail;

  let jsonProba: Proba[] = [];

  let backgroundDetailItems = await YokaiChainDescriptor.getBackgroundItems();
  let backgroundItems = await getItems(BackgroundDetail, backgroundDetailItems, false);
  jsonProba.push({ name: "Background", items: backgroundItems });

  let accessoryDetailItems = await YokaiChainDescriptor.getAccessoryItems();
  let accessoryItems = await getItems(AccessoryDetail, accessoryDetailItems, true);
  jsonProba.push({ name: "Accessory", items: accessoryItems });

  let bodyDetailItems = await YokaiChainDescriptor.getBodyItems();
  let bodyItems = await getItems(BodyDetail, bodyDetailItems, true);
  jsonProba.push({ name: "Body", items: bodyItems });

  let earringsDetailItems = await YokaiChainDescriptor.getEarringsItems();
  let earringsItems = await getItems(EarringsDetail, earringsDetailItems, true);
  jsonProba.push({ name: "Earrings", items: earringsItems });

  let maskDetailItems = await YokaiChainDescriptor.getMaskItems();
  let maskItems = await getItems(MaskDetail, maskDetailItems, true);
  jsonProba.push({ name: "Mask", items: maskItems });

  let eyebrowDetailItems = await YokaiChainDescriptor.getEyebrowItems();
  let eyebrowItems = await getItems(EyebrowDetail, eyebrowDetailItems, true);
  jsonProba.push({ name: "Eyebrow", items: eyebrowItems });

  let eyesDetailItems = await YokaiChainDescriptor.getEyeItems();
  let eyesItems = await getItems(EyesDetail, eyesDetailItems, true);
  jsonProba.push({ name: "Eyes", items: eyesItems });

  let hairDetailItems = await YokaiChainDescriptor.getHairItems();
  let hairItems = await getItems(HairDetail, hairDetailItems, true);
  jsonProba.push({ name: "Hair", items: hairItems });

  let mouthDetailItems = await YokaiChainDescriptor.getMouthItems();
  let mouthItems = await getItems(MouthDetail, mouthDetailItems, true);
  jsonProba.push({ name: "Mouth", items: mouthItems });

  let noseDetailItems = await YokaiChainDescriptor.getNoseItems();
  let noseItems = await getItems(NoseDetail, noseDetailItems, true);
  jsonProba.push({ name: "Nose", items: noseItems });

  let markDetailItems = await YokaiChainDescriptor.getMarkItems();
  let markItems = await getItems(MarkDetail, markDetailItems, true);
  jsonProba.push({ name: "Mark", items: markItems });

  await fs.writeFileSync("yokais/" + "proba.json", JSON.stringify(jsonProba));
}

async function getItems(lib: Contract, contractItems: any[], isBody: boolean) {
  let items: Item[] = [];

  var numberItems = [];
  for (var i = 0; i < contractItems.length; i++) {
    numberItems.push(contractItems[i].toNumber());
  }
  for (let i = 0; i < numberItems.length; i++) {
    let id = i + 1;
    let nameVal = await lib.getItemNameById(i + 1);
    let probaVal = (((i === 0 ? 100000 : numberItems[i - 1]) - numberItems[i]) / 1000).toString();
    let svgVal =
      '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 420 420" style="enable-background:new 0 0 420 420;" xml:space="preserve">';
    if (isBody) {
      svgVal += await bodyDetailConst.item_1();
    }
    svgVal += await lib["item_" + id]();
    svgVal += "</svg>";
    items.push({ name: nameVal, proba: probaVal, svg: svgVal });
  }

  return items;
}

// We recommend this pattern to be able to use async/await everywhere and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error: Error) => {
    console.error(error);
    process.exit(1);
  });
