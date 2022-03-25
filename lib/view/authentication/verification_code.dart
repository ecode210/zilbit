import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:zilbit/constants.dart';

class VerificationCode extends StatelessWidget {
  VerificationCode({Key? key}) : super(key: key);
  final FocusNode focusNode = FocusNode();

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
              SizedBox(height: 50.h),
              Text(
                "Verification",
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: 10.h),
              Text(
                """
Verify olawoleaeo@gmail.com by entering the
verification code""",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Pinput(
                  keyboardType: TextInputType.phone,
                  onTap: () {
                    focusNode.requestFocus();
                  },
                  cursor: Container(
                    height: 20.h,
                    width: 2.w,
                    decoration: BoxDecoration(
                      color: priColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  length: 6,
                  focusNode: focusNode,
                  closeKeyboardWhenCompleted: true,
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  defaultPinTheme: PinTheme(
                    height: 46.w,
                    width: 46.w,
                    textStyle: Theme.of(context).textTheme.headline2,
                    decoration: BoxDecoration(
                      color: formTextAreaDefault.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    height: 46.w,
                    width: 46.w,
                    textStyle: Theme.of(context).textTheme.headline2,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20.r),
                      boxShadow: [
                        BoxShadow(
                          color: priColor.withOpacity(0.25),
                          blurRadius: 5,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                "Didn't receive verification code?",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 30.h),
              Text(
                "Resend Code",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: priColor,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              // NumericKeyboard(
              //   onKeyboardTap: (value) {},
              //   textColor: blackColor,
              //   rightIcon: Icon(
              //     Icons.arrow_back_rounded,
              //     color: blackColor,
              //     size: 30.sp,
              //   ),
              // ),
              // SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
    );
  }
}
