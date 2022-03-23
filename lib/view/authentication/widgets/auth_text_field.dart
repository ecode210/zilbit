import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/authentication/register_controller.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({Key? key, required this.textInputType, required this.hintText}) : super(key: key);
  final TextInputType textInputType;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    if (hintText != "••••") {
      return SizedBox(
        height: 40.h,
        child: TextField(
          cursorColor: priColor,
          keyboardType: textInputType,
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: formHeaders,
                fontWeight: FontWeight.w400,
              ),
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: priColor,
                width: 2.h,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: formTextAreaDefault,
                width: 2.h,
              ),
            ),
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                  color: formTextAreaDefault,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ),
      );
    } else {
      return SizedBox(
        height: 40.h,
        child: Obx(() {
          return TextField(
            cursorColor: priColor,
            keyboardType: textInputType,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: formHeaders,
                  fontWeight: FontWeight.w400,
                ),
            obscureText: Get.find<RegisterController>().passwordVisibility.value,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: priColor,
                  width: 2.h,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: formTextAreaDefault,
                  width: 2.h,
                ),
              ),
              contentPadding: EdgeInsets.only(top: 5.h),
              hintText: hintText,
              hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                    color: formTextAreaDefault,
                    fontWeight: FontWeight.w400,
                  ),
              prefixIcon: BouncingWidget(
                onPressed: () {
                  Get.find<RegisterController>().passwordVisibility.value =
                      !Get.find<RegisterController>().passwordVisibility.value;
                },
                scaleFactor: 1,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: FaIcon(
                    Get.find<RegisterController>().passwordVisibility.value
                        ? FontAwesomeIcons.eye
                        : FontAwesomeIcons.eyeSlash,
                    size: 20.sp,
                    color: formHeaders,
                  ),
                ),
              ),
            ),
          );
        }),
      );
    }
  }
}
