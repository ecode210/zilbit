import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';

class NumericButton extends GetWidget<HomeController> {
  const NumericButton({Key? key, required this.pinController, required this.number}) : super(key: key);
  final TextEditingController pinController;
  final String number;

  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      onPressed: () {
        if (number == "•" && !pinController.text.contains(".")) {
          if (pinController.text.isEmpty) {
            pinController.text = pinController.text + "0.";
          } else {
            pinController.text = pinController.text + ".";
          }
        }
        if (pinController.text.length < 10 && number != "<" && number != "•") {
          if (pinController.text.length == 1 && pinController.text[0] == "0" && number == "0") {
          } else {
            pinController.text = pinController.text + number;
          }
        } else if (pinController.text.isNotEmpty && number == "<") {
          pinController.text = pinController.text.substring(0, pinController.text.length - 1);
        }
        if (pinController.text.isEmpty || pinController.text == "0" || double.parse(pinController.text) <= 0) {
          controller.swap.value = false;
        } else if (pinController.text.isNotEmpty) {
          controller.swap.value = true;
        }
      },
      scaleFactor: 1,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.transparent,
        child: number == "<"
            ? Icon(
                Icons.arrow_back_rounded,
                size: 30.sp,
                color: blackColor,
              )
            : Text(
                number,
                style: Theme.of(context).textTheme.overline,
              ),
      ),
    );
  }
}
