import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';

class CreateReferralID extends GetWidget<ProfileController> {
  const CreateReferralID({Key? key}) : super(key: key);

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
              SizedBox(height: 20.h),
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
                      "Refer and Earn",
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    SizedBox(width: 25.w),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 240.h,
                width: 240.w,
                child: Lottie.asset(
                  "assets/lottie/id-card.json",
                  height: 240.h,
                  width: 240.w,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                """
Create your
Unique Referral ID""",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 20.sp),
              ),
              SizedBox(height: 20.h),
              TextField(
                cursorColor: priColor,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
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
                  hintText: "ZL1890",
                  hintStyle: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  "Choose an ID that is unique to only you and that can easily be remembered at anytime. This ID can be changed anytime you decide to use a new one.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: formHeaders,
                        fontSize: 10.sp,
                      ),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx(
                    () {
                      return Transform.scale(
                        scale: 1.25,
                        child: SizedBox(
                          height: 25.h,
                          width: 25.h,
                          child: Checkbox(
                            value: controller.createReferralID.value,
                            fillColor: MaterialStateProperty.all(priColor),
                            checkColor: whiteColor,
                            shape: const StadiumBorder(),
                            splashRadius: 10,
                            onChanged: (value) {
                              controller.createReferralID.value = value!;
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
                            text: "I have read and accepted the ",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                          ),
                          TextSpan(
                            text: "Terms of use",
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
              SizedBox(height: 40.h),
              GestureDetector(
                onTap: () {
                  controller.hasReferralID.value = true;
                  Get.back();
                },
                child: Container(
                  height: 50.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    color: priColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Finish",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16.sp),
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
