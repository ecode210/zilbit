import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/authentication/register_controller.dart';
import 'package:zilbit/view/authentication/welcome.dart';
import 'package:zilbit/view/authentication/widgets/email_login.dart';
import 'package:zilbit/view/authentication/widgets/phone_login.dart';

class Login extends GetWidget<RegisterController> {
  Login({Key? key}) : super(key: key);
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: whiteColor,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SizedBox(
            width: 375.w,
            height: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 20.h),
                SizedBox(
                  height: 24.h,
                  width: 375.w,
                  child: Row(
                    children: [
                      SizedBox(width: 20.w),
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
                      Icon(
                        Icons.help_outline_outlined,
                        color: Colors.black,
                        size: 25.sp,
                      ),
                      SizedBox(width: 20.w),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "Login",
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(height: 10.h),
                Text(
                  "Enter your Email and Password to log in to\nyour account",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(height: 45.h),
                Row(
                  children: [
                    SizedBox(width: 45.w),
                    BouncingWidget(
                      onPressed: () {
                        _pageController.animateToPage(
                          0,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                        );
                      },
                      scaleFactor: 0.5,
                      child: Obx(() {
                        return Text(
                          "Email Login",
                          style: Theme.of(context).textTheme.headline4!.copyWith(
                                color: controller.loginTab.value == 0 ? blackColor : formTextAreaDefault,
                              ),
                        );
                      }),
                    ),
                    const Spacer(),
                    BouncingWidget(
                      onPressed: () {
                        _pageController.animateToPage(
                          1,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                        );
                      },
                      scaleFactor: 0.5,
                      child: Obx(() {
                        return Text(
                          "Phone Login",
                          style: Theme.of(context).textTheme.headline4!.copyWith(
                                color: controller.loginTab.value == 1 ? blackColor : formTextAreaDefault,
                              ),
                        );
                      }),
                    ),
                    SizedBox(width: 45.w),
                  ],
                ),
                SizedBox(height: 20.h),
                Obx(
                  () {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 375.w,
                          height: 1.h,
                          color: formTextAreaDefault,
                          margin: EdgeInsets.symmetric(vertical: 1.h),
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 200),
                          left: controller.loginTab.value == 0 ? 0 : null,
                          right: controller.loginTab.value == 1 ? 0 : null,
                          top: -1.5.h,
                          child: Container(
                            width: 187.w,
                            height: 3.h,
                            decoration: BoxDecoration(
                              color: secColor,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(height: 15.h),
                SizedBox(
                  height: 283.h,
                  width: 375.w,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (page) {
                      controller.loginTab.value = page;
                    },
                    children: const [
                      EmailLogin(),
                      PhoneLogin(),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Send OTP",
                    style: Theme.of(context).textTheme.button!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const Welcome());
                  },
                  child: Container(
                    height: 60.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                      color: priColor,
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          color: priColor.withOpacity(0.5),
                          offset: Offset(0, 5.h),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
