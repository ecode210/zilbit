import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/authentication/transaction_pin.dart';
import 'package:zilbit/view/authentication/widgets/numeric_button.dart';

class VerificationCode extends StatelessWidget {
  VerificationCode({Key? key}) : super(key: key);
  final TextEditingController pinController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(height: 40.h),
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
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Pinput(
                  keyboardType: TextInputType.phone,
                  controller: pinController,
                  focusNode: focusNode,
                  onTap: () {
                    focusNode.unfocus();
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
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                "Didn't receive verification code?",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  //TODO: Change functionality
                  Get.to(() => TransactionPin());
                },
                child: Text(
                  "Resend Code",
                  style: Theme.of(context).textTheme.button!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NumericButton(pinController: pinController, number: "1"),
                  NumericButton(pinController: pinController, number: "2"),
                  NumericButton(pinController: pinController, number: "3"),
                ],
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NumericButton(pinController: pinController, number: "4"),
                  NumericButton(pinController: pinController, number: "5"),
                  NumericButton(pinController: pinController, number: "6"),
                ],
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NumericButton(pinController: pinController, number: "7"),
                  NumericButton(pinController: pinController, number: "8"),
                  NumericButton(pinController: pinController, number: "9"),
                ],
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 40.h,
                    width: 45.w,
                  ),
                  NumericButton(pinController: pinController, number: "0"),
                  NumericButton(pinController: pinController, number: "<"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
