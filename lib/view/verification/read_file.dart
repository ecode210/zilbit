import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/verification/verification_controller.dart';
import 'package:zilbit/view/verification/id_submitted.dart';
import 'package:zilbit/view/verification/scan_file.dart';

class ReadFile extends GetWidget<VerificationController> {
  const ReadFile({Key? key, required this.cardSide, required this.image}) : super(key: key);
  final String cardSide;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: SizedBox(
            width: 375.w,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Container(
                  height: 24.h,
                  width: 375.w,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 25.sp,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        cardSide,
                        style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                      ),
                      const Spacer(),
                      SizedBox(width: 25.w),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: SizedBox(
                    width: 375.w,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: double.infinity,
                          width: 375.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/jpg/verification background.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: 375.w,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        Positioned(
                          top: 100.h,
                          child: Container(
                            height: 210.h,
                            width: 335.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              border: Border.all(
                                color: Colors.white,
                                width: 5.h,
                              ),
                              image: DecorationImage(
                                image: FileImage(
                                  File(image),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 300.h,
                            width: 375.w,
                            padding: EdgeInsets.all(25.w),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.r),
                                topLeft: Radius.circular(20.r),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Is the ID easy to read?",
                                  style: Theme.of(context).textTheme.headline1!.copyWith(color: blackColor),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "Please make sure the text is clear and your entire card is visible.",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
                                ),
                                SizedBox(height: 30.h),
                                GestureDetector(
                                  onTap: () {
                                    if (controller.frontDocument.value != "" && controller.backDocument.value != "") {
                                      Get.to(() => const IDSubmitted());
                                    } else if (cardSide == "Front") {
                                      String cardSide = "Back";
                                      Get.off(() => ScanFile(cardSide: cardSide));
                                    } else if (cardSide == "Back") {
                                      String cardSide = "Front";
                                      Get.off(() => ScanFile(cardSide: cardSide));
                                    }
                                  },
                                  child: Container(
                                    height: 50.h,
                                    width: 325.w,
                                    decoration: BoxDecoration(
                                      color: priColor,
                                      borderRadius: BorderRadius.circular(6.r),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Yes, looks good",
                                      style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15.h),
                                GestureDetector(
                                  onTap: () {
                                    controller.retryImage(cardSide: cardSide);
                                  },
                                  child: Container(
                                    height: 50.h,
                                    width: 325.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6.r),
                                      border: Border.all(
                                        color: formTextAreaDefault,
                                        width: 1.h,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Retake",
                                      style: Theme.of(context).textTheme.button!.copyWith(color: blackColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
