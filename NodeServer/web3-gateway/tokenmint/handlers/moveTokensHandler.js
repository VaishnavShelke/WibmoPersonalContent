const { ethers } = require("ethers");

const ALCHEMY_API_KEY = "zE7pNLOYNG_rupkDWOJmVls72NLIQ4Rc";
const provider = new ethers.providers.JsonRpcProvider(
  `https://eth-sepolia.g.alchemy.com/v2/${ALCHEMY_API_KEY}`
);

const account1 = "0x1783913E8aE51f2883D1be5307b95C7805218815"; // Your account address 1
const account2 = "0xe1b862C5E887F8F04B6991Ad3cD7470c6D2D93E6"; // Your account address 2

const privateKey1 =
  "0xd5c4458de5560c1c9d6c66a00bf738e40d1cd6d1edd19854bca01f5167f371b4"; // Private key of account 1
const wallet = new ethers.Wallet(privateKey1, provider);

const TokenMintInventoryABI = [
  "function balanceOf(address account, uint256 id) public view returns (uint256)",
  "function safeTransferFrom(address from, address to, uint256 id, uint256 value, bytes memory data) public",
];

const address = "0x1a6f283354afE50b2bc8D0E72F7e2bDA6dE27da5";
const contract = new ethers.Contract(address, TokenMintInventoryABI, provider);

const moveTokenHandler = async ({
  operatorWallet,
  contract,
  from,
  to,
  id,
  value,
  data,
}) => {
  const balance = await contract.balanceOf(account1, 1);

  console.log(`\nReading from ${address}\n`);
  console.log(`Balance of sender: ${balance}\n`);

  const contractWithWallet = contract.connect(operatorWallet);

  const tx = await contractWithWallet.mySafeTransferFrom(
    from,
    to,
    id,
    value,
    data
  );
  const txReciept = await tx.wait();

  console.log(`Transaction Reciept ${txReciept}`);

  const balanceOfSender = await contract.balanceOf(from, id);
  const balanceOfReciever = await contract.balanceOf(to, id);

  console.log(`\nBalance of sender: ${balanceOfSender}`);
  console.log(`Balance of reciever: ${balanceOfReciever}\n`);
  return txReciept;
};

module.exports = { moveTokenHandler };
