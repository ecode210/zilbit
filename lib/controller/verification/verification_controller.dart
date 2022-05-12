import 'package:edge_detection/edge_detection.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:zilbit/view/verification/read_file.dart';

class VerificationController extends GetxController {
  Rx<bool> verificationTC = false.obs;
  Rx<bool> personalInfoTC = false.obs;
  Rx<bool> identityVerificationTC = false.obs;
  Rx<bool> personalInfoVerified = false.obs;
  Rx<bool> identityVerified = false.obs;
  Rx<bool> phoneEmailVerified = false.obs;
  Rx<bool> verify = false.obs;
  Rx<String> frontDocument = "".obs;
  Rx<String> backDocument = "".obs;

  void getImage() async {
    try {
      if (frontDocument.value == "" && backDocument.value == "") {
        frontDocument.value = (await EdgeDetection.detectEdge)!;
        Get.to(() => ReadFile(cardSide: "Front", image: frontDocument.value));
      } else if (backDocument.value == "") {
        backDocument.value = (await EdgeDetection.detectEdge)!;
        Get.to(() => ReadFile(cardSide: "Back", image: backDocument.value));
      }
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  void retryImage({required String cardSide}) async {
    try {
      switch (cardSide) {
        case "Front":
          frontDocument.value = (await EdgeDetection.detectEdge)!;
          Get.off(() => ReadFile(cardSide: "Front", image: frontDocument.value));
          break;
        case "Back":
          backDocument.value = (await EdgeDetection.detectEdge)!;
          Get.off(() => ReadFile(cardSide: "Back", image: backDocument.value));
          break;
      }
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }
}
