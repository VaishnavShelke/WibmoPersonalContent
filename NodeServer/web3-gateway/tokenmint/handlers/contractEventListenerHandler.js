const ethers = require("ethers");
const tokenMintInventoryABI = require("../../tokenMintInventoryABI.json");
const { sendTokenTransferEvent } = require("./sendTokenTransferEvent");

const tokenMintInventoryTemp = [
  "function balanceOf(address account, uint256 id) public view returns (uint256)",
  "function safeTransferFrom(address from, address to, uint256 id, uint256 value, bytes memory data) public",
  "function mySafeTransferFrom(address from, address to, uint256 id, uint256 value, bytes memory data) public",
  "event TransferOnTokenMintEvent(address operator,address indexed from,address to,uint256 id, uint256 value,bytes data)",
];

async function contractEventListener() {
  const API_URL =
    "wss://eth-sepolia.g.alchemy.com/v2/zE7pNLOYNG_rupkDWOJmVls72NLIQ4Rc";
  const alchemyProvider = new ethers.providers.WebSocketProvider(API_URL);
  const tokenMintInventoryAddress =
    "0x184a20faD1487B68E951f3094eE44fda9bf929b3";
  const contract = new ethers.Contract(
    tokenMintInventoryAddress,
    tokenMintInventoryTemp,
    alchemyProvider
  );

  contract.on(
    "TransferOnTokenMintEvent",
    (operator, from, to, id, value, data, event) => {
      let info = {
        operator: operator,
        from: from,
        to: to,
        id: id,
        value: ethers.utils.formatUnits(value, 6),
        data: data,
        event: event,
      };
      sendTokenTransferEvent(info);
      console.log(`EVENT LISTENER LOGS ::  ${JSON.stringify(info, null, 4)}`);
    }
  );
}

module.exports = contractEventListener;

// const { Alchemy, Network, AlchemySubscription } = require("alchemy-sdk");

// const settings = {
//   apiKey: "zE7pNLOYNG_rupkDWOJmVls72NLIQ4Rc", // Replace with your Alchemy API key.
//   network: Network.ETH_SEPOLIA, // Replace with your network.
// };

// const alchemy = new Alchemy(settings);

// alchemy.ws.on(
//   "TransferSingle",
//   (res) => console.log(res)
// );
// const tokenMintInventoryAddress =
//   "0x1a6f283354afE50b2bc8D0E72F7e2bDA6dE27da5";
// const provider = ethers.providers.WebSocketProvider(
//   "wss://eth-sepolia.g.alchemy.com/v2/zE7pNLOYNG_rupkDWOJmVls72NLIQ4Rc"
// );
// const contract = new ethers.Contract(
//   tokenMintInventoryAddress,
//   tokenMintInventoryABI,
//   provider
// );
// contract.on("TransferSingle", (from, to, value, event) => {
//   let info = {
//     from: from,
//     to: to,
//     value: ethers.utils.formatUnits(value, 6),
//     data: event,
//   };
//   console.log(JSON.stringify(info, null, 4));
// });
