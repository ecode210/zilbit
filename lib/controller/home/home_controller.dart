import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<int> currentPage = 0.obs;
  Rx<double> swapPosition = 0.0.obs;
  Rx<int> swapWidth = 50.obs;
  Rx<bool> swap = false.obs;
}
