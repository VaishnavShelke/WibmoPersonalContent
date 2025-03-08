
class _PCGParachutes_ {

    public String buyInGameAsset(String playerId, int quantity, int purchaseAmount) {

        if (purchaseAmount >= quantity * Inventory.getsellingPriceFor_PCGParachutes_()
                && Inventory.getTotalSupply_PCGParachutes_() >= quantity) {

            boolean paymentSuccess = PaymentService.transferMoneyToGame(purchaseAmount);
            /**
             * Will Initiate transfer of money from player to game, using UPI, card payment
             */

            if (!paymentSuccess) {
                return "FALIURE";
            }
            Inventory.reduceTotalSupply(quantity);
            /** Reduce totalSupply of _PCGParachutes_ */

            Inventory.add_PCGParachutes_ForPlayer(playerId, quantity);
            /** Add "quantity" amount of _PCGParachutes_ to playerId */

            return "SUCCESS";
        } else {
            return "FALIURE";
        }
    }
}

/**
 * Inventory
 */
class Inventory {

    public static int getTotalSupply_PCGParachutes_() {
        return 0;
    }

    public static int getsellingPriceFor_PCGParachutes_() {
        return 0;
    }

    public static int getTotalSupply() {
        return 0;
    }

    public static int reduceTotalSupply(Integer ii) {
        return 0;
    }

    public static int add_PCGParachutes_ForPlayer(String playerId, Integer quantity) {
        return 0;
    }
}

class PaymentService {

    public static int initiateRefundFor(String playerId, Integer amount) {
        return 0;
    }

    public static boolean transferMoneyToGame(int purchaseAmount) {
        return true;
    }
}
