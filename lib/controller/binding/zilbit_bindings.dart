import 'package:get/get.dart';
import 'package:zilbit/controller/authentication/register_controller.dart';
import 'package:zilbit/controller/home/home_controller.dart';

class ZilbitBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
    Get.lazyPut(() => HomeController());
  }
}
