const express = require("express");
const app = express();
const port = 2001;

const {
  errorHandlerMiddleware,
  requestLogger,
  responseLogger,
} = require("./tokenmint/middleware/customMiddleWares");

app.use(express.json());
app.use(requestLogger);
app.use(responseLogger);
app.use(errorHandlerMiddleware);

app.get("/", (req, res) => {
  res.send("Home Page");
});

const utilityRoutes = require("./tokenmint/routes/utilityRoutes.js");
const tokenMintRoutes = require("./tokenmint/routes/tokenMintRoutes.js");
app.use("/utility", utilityRoutes);
app.use("/web-3-gateway/tokenmint", tokenMintRoutes);

const contractEventListener = require("./tokenmint/handlers/contractEventListenerHandler.js");
contractEventListener()
  .then((result) => {
    console.log("Event Listener Initialized");
  })
  .catch((error) => {
    console.log(`Error in initializing contract EvenetListener ${error}`);
  });

app.listen(port, () => {
  console.log(`Node Server Started!!! on port ${port}`);
});
