import 'package:flutter_contacts/contact.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<int> currentPage = 0.obs;
  Rx<double> swapPosition = 0.0.obs;
  Rx<int> swapWidth = 50.obs;
  Rx<bool> swap = false.obs;
  Rx<int> sendCurrency = 0.obs;
  Rx<int> modeOfDeposit = 0.obs;
  Rx<int> depositCrypto = 0.obs;
  List<Contact>? contacts;
  Rx<bool> contactPermission = false.obs;
  Rx<String> sendContact = "".obs;
}
