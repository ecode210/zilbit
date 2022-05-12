import 'package:get/get.dart';
import 'package:zilbit/controller/authentication/register_controller.dart';
import 'package:zilbit/controller/home/home_controller.dart';
import 'package:zilbit/controller/marketplace/marketplace_controller.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';
import 'package:zilbit/controller/verification/verification_controller.dart';
import 'package:zilbit/controller/wallet/wallet_controller.dart';

class ZilbitBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => MarketplaceController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => VerificationController(), fenix: true);
    Get.lazyPut(() => WalletController(), fenix: true);
  }
}
