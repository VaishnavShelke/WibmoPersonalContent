const axios = require("axios");

const apiUrl =
  "http://localhost:1001/tokenmint/server/internal/eventlistener/transferevent";

const sendTokenTransferEvent = async (info) => {
  try {
    const postData = {
      tokenMintTransactionId: info.data,
      operator: info.operator,
      from: info.from,
      to: info.to,
      value: info.value,
      transactionReciept: {
        blockNumber: info.event.blockNumber,
        transactionHash: info.event.transactionHash,
      },
    };
    axios
      .post(apiUrl, postData)
      .then((response) => {
        console.log("Response:", response.data);
      })
      .catch((error) => {
        console.error("Error:", error.message);
      });
  } catch (error) {
    console.log(`Error In Sending TransferEventPacket ${error.message}`);
  }
};

module.exports = { sendTokenTransferEvent };
