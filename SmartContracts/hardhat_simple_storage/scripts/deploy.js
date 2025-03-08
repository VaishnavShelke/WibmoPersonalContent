
const {ethers } = require("hardhat")

async function main() {

  const SimpleStorageFactory = await ethers.getContractFactory("SimpleStorage");
  const simpleStorage = await SimpleStorageFactory.deploy();
  const address = await simpleStorage.getAddress();
  console.log(`Deployment Address ${address}`);
}

main()
  .then(() => console.log("Main Process Completed !!!!"))
  .catch((error) => console.error(error));
