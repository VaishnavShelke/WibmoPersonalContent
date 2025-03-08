const { ethers } = require("ethers");

const initProvider = async ({ providerId }) => {
  try {
    const ALCHEMY_API_KEY = "zE7pNLOYNG_rupkDWOJmVls72NLIQ4Rc";
    const provider = new ethers.providers.JsonRpcProvider(
      `https://eth-sepolia.g.alchemy.com/v2/${ALCHEMY_API_KEY}`
    );
    return provider;
  } catch (error) {
    console.log(`Error In Initailizing Provider :: ${error.message}`);
    return null;
  }
};

module.exports = { initProvider };
