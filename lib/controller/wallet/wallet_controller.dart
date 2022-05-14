import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';

class WalletController extends GetxController {
  Rx<String> tradeTimelineValue = "1H".obs;
  Color tradeTimeline({required String title}) {
    if (tradeTimelineValue.value == title) {
      return priColor;
    }
    return formHeaders;
  }
}
