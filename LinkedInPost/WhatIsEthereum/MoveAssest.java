import java.util.HashMap;

class PCGParachutes {

    private Integer totalSupply = 9999;
    private Integer sellingPrice = 100;
    private HashMap<String, Integer> ownershipDetails = new HashMap<>();
    private String gameBlockchainAddress = "0x21xasa1ff12xgdfhay23273xv3hsdg3d7g3ydg38g3jwegdy2";

    public String buyInGameAsset(String buyerBlockChainAddress, int quantity, int purchaseAmount) {

        if (purchaseAmount >= quantity * sellingPrice && totalSupply >= quantity) {
            totalSupply = totalSupply - quantity;
            /** Reduce The Total supply of the tokens */

            ownershipDetails.put(buyerBlockChainAddress, quantity);
            /** Add "quantity" amout of tokens to "playerBlockchainAddress" */ // "
            transferMoney(gameBlockchainAddress, purchaseAmount);
            /**
             * Transfer "purchaseAmount" worth of "Ether" to the owner's Blockchain Address
             */

        } else {
            transferMoney(buyerBlockChainAddress, purchaseAmount);
            /** Return amount to "playerBlockChainAddress" */
        }
        return "Ok";
    }

    public Integer totalAssetsOwned(String blockchainAddress) {
        return ownershipDetails.get(blockchainAddress);
    }

    private void transferMoney(String ownerBlockchainAddress2, int purchaseAmount) {
    }
}