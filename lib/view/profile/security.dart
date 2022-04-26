import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';
import 'package:zilbit/view/profile/widgets/security_list.dart';

class Security extends GetWidget<ProfileController> {
  const Security({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: 375.w,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: defaultTargetPlatform == TargetPlatform.iOS ? 20.h : 30.h),
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
                        color: Colors.black,
                        size: 25.sp,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Security",
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.card_giftcard_rounded,
                        color: formTextAreaDefault,
                        size: 25.sp,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: SizedBox(
                  width: 375.w,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: [
                      SizedBox(height: 20.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Verify Identity",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
                              ),
                              SizedBox(width: 10.w),
                              Icon(
                                Icons.error_rounded,
                                color: warningColor,
                                size: 20.sp,
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "Complete your verification and do more with zilbit.",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SecurityList(
                        title: "Change PIN",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SecurityList(
                        title: "Change Password",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SecurityList(
                        title: "Use Face ID",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SecurityList(
                        title: "Security Question",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SecurityList(
                        title: "Two-Factor Authentication",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SecurityList(
                        title: "Account Activity",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SecurityList(
                        title: "Disable Account",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SecurityList(
                        title: "App Version",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SecurityList(
                        title: "Primary Device",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
