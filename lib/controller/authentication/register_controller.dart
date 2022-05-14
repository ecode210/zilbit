import 'package:get/get.dart';

class RegisterController extends GetxController {
  Rx<int> registerTab = 0.obs;
  Rx<int> loginTab = 0.obs;
  Rx<bool> registerTC = false.obs;
  Rx<bool> passwordVisibility = true.obs;
}
