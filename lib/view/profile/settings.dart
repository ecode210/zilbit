import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';
import 'package:zilbit/view/profile/widgets/settings_list.dart';

class Settings extends GetWidget<ProfileController> {
  const Settings({Key? key}) : super(key: key);

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
                      "Settings",
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
                      const SettingsList(
                        title: "Language",
                        subtitle: "English",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SettingsList(
                        title: "Push Notification",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SettingsList(
                        title: "Currency",
                        subtitle: "NGN",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SettingsList(
                        title: "Payment Currency",
                        subtitle: "NGN",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SettingsList(
                        title: "Dark Mode",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SettingsList(
                        title: "Terms and Agreements",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SettingsList(
                        title: "Privacy Policy",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const SettingsList(
                        title: "About Us",
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
