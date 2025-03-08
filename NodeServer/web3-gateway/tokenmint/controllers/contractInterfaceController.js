const asyncHandler = require("express-async-handler");

const { initContract } = require("../handlers/initContractService");
const { initProvider } = require("../handlers/initProviderService");
const { moveTokenHandler } = require("../handlers/moveTokensHandler");
const { initWallet } = require("../handlers/initWalletService");
const { INTERNAL_SERVER_ERROR } = require("../utils/constants");
const transferTokensHandler = asyncHandler(async (req, res) => {
  const {
    tokenMintTransactionId,
    contractId,
    contractName,
    contractAddress,
    contractChainId,
    contractABI,
    contractOperatorAddress,
    web3ContractArguments,
  } = req.body;

  const { from, to, id, value, data } = web3ContractArguments;

  const provider = await initProvider({ contractChainId });
  if (!provider) {
    console.log(`Provider could not be initialized, terminating the process..`);
    res.status(500).send({
      statusCode: INTERNAL_SERVER_ERROR,
      statusDesc: "Provider could not be initialized",
    });
  }

  const contract = await initContract({
    contractAddress,
    contractABI,
    provider,
  });
  if (!contract) {
    console.log(
      `Contract Could not be initialized, Terminating the processs...`
    );
    res.status(500).send({
      statusCode: INTERNAL_SERVER_ERROR,
      statusDesc: "Contract Could not be initialized",
    });
  }

  const operatorWallet = await initWallet({
    contractOperatorAddress,
    provider,
  });
  if (!operatorWallet) {
    console.log(`Operator Wallet Could Not Be Initialized`);
    res.status(500).send({
      statusCode: INTERNAL_SERVER_ERROR,
      statusDesc: "Operator Wallet Could Not Be Initialized",
    });
  }

  try {
    const txnReciept = moveTokenHandler({
      operatorWallet,
      contract,
      from,
      to,
      id,
      value,
      data,
    });
    res.status(200).send({ txnInfo: "COMPLETED" });
  } catch (error) {
    console.log(`Error while transferring tokens ${error.message}`);
    res.status(500).send({
      statusCode: INTERNAL_SERVER_ERROR,
      statusDesc: "Token Transfer Failed",
    });
  }
});

module.exports = { transferTokensHandler };
