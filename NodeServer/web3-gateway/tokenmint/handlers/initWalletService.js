const { ethers } = require("ethers");

const initWallet = async ({ contractOperatorAddress, provider }) => {
  try {
    const operatorPrivateKey =
      "0xd5c4458de5560c1c9d6c66a00bf738e40d1cd6d1edd19854bca01f5167f371b4";
    const wallet = new ethers.Wallet(operatorPrivateKey, provider);
    return wallet;
  } catch (error) {
    console.log(`Error in initializing wallet  :: ${error.message}`);
    return null;
  }
};

module.exports = { initWallet };
