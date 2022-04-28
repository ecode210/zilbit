import 'package:flutter_contacts/contact.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  Rx<bool> merchantRegister = false.obs;
  Rx<bool> addBank = false.obs;
  Rx<bool> useFaceID = false.obs;
  Rx<bool> darkMode = false.obs;
  Rx<bool> createReferralID = false.obs;
  Rx<bool> hasReferralID = false.obs;
  List<Contact>? contacts;
  Rx<bool> contactPermission = false.obs;
  Rx<int> radioValue = 0.obs;
  Rx<bool> hasInvites = false.obs;
}
