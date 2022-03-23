import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/authentication/register_controller.dart';
import 'package:zilbit/view/authentication/email_sign_up.dart';
import 'package:zilbit/view/authentication/phone_sign_up.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  final PageController _pageController = PageController(initialPage: 0);
  final registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
                "Register",
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: 10.h),
              Text(
                """
Enter your Email and Password to get
started""",
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
                        "Email Sign up",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: registerController.registerTab.value == 0 ? blackColor : formTextAreaDefault,
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
                        "Phone Sign up",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: registerController.registerTab.value == 1 ? blackColor : formTextAreaDefault,
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
                        left: registerController.registerTab.value == 0 ? 0 : null,
                        right: registerController.registerTab.value == 1 ? 0 : null,
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
                    registerController.registerTab.value = page;
                  },
                  children: const [
                    EmailSignUp(),
                    PhoneSignUp(),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 25.w),
                  Obx(
                    () {
                      return Transform.scale(
                        scale: 1.25,
                        child: SizedBox(
                          height: 25.h,
                          width: 25.h,
                          child: Checkbox(
                            value: registerController.registerTC.value,
                            fillColor: MaterialStateProperty.all(priColor),
                            checkColor: backgroundColor,
                            shape: const StadiumBorder(),
                            splashRadius: 10,
                            onChanged: (value) {
                              registerController.registerTC.value = value!;
                            },
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: """
By submitting this application you confirm that you
are authorized to share this information and agree
with our """,
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                          ),
                          TextSpan(
                            text: "Terms and condition",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 12.sp,
                                  color: priColor,
                                ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 25.w),
                ],
              ),
              const Spacer(),
              Container(
                height: 60.h,
                width: 343.w,
                decoration: BoxDecoration(
                  color: priColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Send Verification Code",
                  style: Theme.of(context).textTheme.button!.copyWith(color: backgroundColor),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
