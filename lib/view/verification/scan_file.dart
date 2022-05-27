import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/controller/verification/verification_controller.dart';

class ScanFile extends GetWidget<VerificationController> {
  const ScanFile({Key? key, required this.cardSide}) : super(key: key);
  final String cardSide;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SizedBox(
          height: 812.h,
          width: 375.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                "assets/jpg/verification background.jpg",
                height: 812.h,
                width: 375.w,
                fit: BoxFit.cover,
              ),
              Container(
                height: 812.h,
                width: 375.w,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                color: Colors.black.withOpacity(0.5),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 24.h,
                        width: 375.w,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                                size: 25.sp,
                              ),
                            ),
                            const Spacer(),
                            SizedBox(
                              width: 150.w,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 4.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.r),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Expanded(
                                    child: Obx(
                                      () {
                                        return Container(
                                          height: 4.h,
                                          decoration: BoxDecoration(
                                            color: controller.frontDocument.value == ""
                                                ? Colors.white.withOpacity(0.3)
                                                : Colors.white,
                                            borderRadius: BorderRadius.circular(10.r),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            SizedBox(width: 25.w),
                          ],
                        ),
                      ),
                      SizedBox(height: 100.h),
                      Container(
                        height: 210.h,
                        width: 335.w,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.r),
                          image: const DecorationImage(
                            image: AssetImage("assets/jpg/verification background.jpg"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(height: 60.h),
                      Text(
                        cardSide,
                        style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "Take a photo of your National ID",
                        style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "Be sure your document clearly shows:",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "●  Your name\n●  Your National ID Number\n●  Address",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.white,
                              fontSize: 16.sp,
                              height: 1.5,
                            ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            controller.getImage();
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 32.sp,
                            child: CircleAvatar(
                              backgroundColor: Colors.brown,
                              radius: 28.sp,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
