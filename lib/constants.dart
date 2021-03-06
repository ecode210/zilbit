import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

const priColor = Color(0xFF9B51E0);
const secColor = Color(0xFF7F41B9);
const whiteColor = Colors.white;
const blackColor = Colors.black;
const backgroundColor = Color(0xFFEEF2F8);
const formTextAreaDefault = Color(0xFFBAC3D2);
const formHeaders = Color(0xFF5B667A);
const pageTitle = Color(0xFF293345);
const warningColor = Color(0xFFDD1444);

void bottomSheet({double? height, required bool dismissable, required Widget child}) {
  Get.bottomSheet(
    Container(
      height: height ?? 450.h,
      width: 375.w,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: child,
    ),
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withOpacity(0.5),
    elevation: 0,
    isDismissible: dismissable,
  );
}
