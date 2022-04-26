import 'package:get/get.dart';

class ProfileController extends GetxController {
  Rx<bool> merchantRegister = false.obs;
  Rx<bool> addBank = false.obs;
  Rx<bool> useFaceID = false.obs;
  Rx<bool> darkMode = false.obs;
  Rx<bool> createReferralID = false.obs;
  Rx<bool> hasReferralID = true.obs;
}
