const ethers = require("ethers");
const fs = require("fs");
require("dotenv").config();

async function deploy() {
        console.log("Inside Main Function");
        const provider = new ethers.providers.JsonRpcProvider(
                "http://127.0.0.1:7545",
        );
        const wallet = new ethers.Wallet(process.env.PRIVATE_KEY, provider);
        const abi = fs.readFileSync(
                "./SimpleStorage_sol_SimpleStorage.abi",
                "utf8",
        );
        const binary = fs.readFileSync(
                "./SimpleStorage_sol_SimpleStorage.bin",
                "utf8",
        );

        const contractFactory = new ethers.ContractFactory(abi, binary, wallet);
        console.log("Deploying Contract");
        const contract = await contractFactory.deploy({});
        const transactionResponse = await contract.store("7");
        const readContract = await contract.getFavouriteNumber();
        console.log(transactionResponse);
        console.log(`favourite number :: ${readContract}`);
}

deploy()
        .then(() => console.log("Main Process Executed"))
        .catch((error) => console.error(error));

async function interact() {
        console.log("Inside Interact Function Function");
        const provider = new ethers.providers.JsonRpcProvider(
                "http://127.0.0.1:7545",
        );
        const wallet = new ethers.Wallet(
                "0x621c5219f0af98836ca27e95cb15094367586dc46fd71cef16c60311d2dd78ac",
                provider,
        );
        const abi = fs.readFileSync(
                "./SimpleStorage_sol_SimpleStorage.abi",
                "utf8",
        );
        const binary = fs.readFileSync(
                "./SimpleStorage_sol_SimpleStorage.bin",
                "utf8",
        );

        const contractFactory = new ethers.ContractFactory(abi, binary, wallet);
}

// interact()
//   .then(() => console.log("interact with contract completed"))
//   .catch((error) => console.log(error));
