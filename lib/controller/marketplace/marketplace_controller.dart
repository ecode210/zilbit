import 'package:get/get.dart';

class MarketplaceController extends GetxController {
  Rx<String> selectedMarketplace = "P2P".obs;
  var marketplace = [
    "P2P",
    "Card",
  ];
  Rx<String> selectedMarket = "Market-USD".obs;
  var market = [
    "Market-USD",
    "Market-NGN",
  ];
  Rx<String> selectedTransactionType = "Buy".obs;
  var transactionType = [
    "Buy",
    "Sell",
  ];
  Rx<String> selectedCurrencyType = "BTC".obs;
  var currencyType = [
    "BTC",
    "ETH",
    "USDT",
  ];
  Rx<bool> vendorFavorite = false.obs;
}
