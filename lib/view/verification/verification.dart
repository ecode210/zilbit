import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/verification/verification_controller.dart';
import 'package:zilbit/view/verification/widgets/verification_list.dart';

class Verification extends GetWidget<VerificationController> {
  const Verification({Key? key}) : super(key: key);

  bool canSubmitVerification() {
    if (controller.personalInfoVerified.value ||
        controller.identityVerified.value ||
        controller.phoneEmailVerified.value) {
      if (controller.verificationTC.value) return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
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
                      "Complete Verification",
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    SizedBox(width: 25.w),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                "Complete the following verification\nprocesses to do more with Zilbit",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
              ),
              SizedBox(height: 30.h),
              const VerificationList(
                title: "Personal Information",
                icon: FontAwesomeIcons.user,
              ),
              SizedBox(height: 20.h),
              const VerificationList(
                title: "Identity Verification",
                icon: FontAwesomeIcons.addressCard,
              ),
              SizedBox(height: 20.h),
              const VerificationList(
                title: "Phone and Email Verification",
                icon: FontAwesomeIcons.mobileScreen,
              ),
              SizedBox(height: 30.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10.w),
                  Obx(
                    () {
                      return Transform.scale(
                        scale: 1.25,
                        child: SizedBox(
                          height: 25.h,
                          width: 25.h,
                          child: Checkbox(
                            value: controller.verificationTC.value,
                            fillColor: MaterialStateProperty.all(priColor),
                            checkColor: whiteColor,
                            shape: const StadiumBorder(),
                            splashRadius: 10,
                            onChanged: (value) {
                              controller.verificationTC.value = value!;
                            },
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Text(
                      "This information is used for user verification only and is kept private and confidential by Zilbit",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                    ),
                  ),
                  SizedBox(width: 10.w),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Obx(
                  () {
                    return Container(
                      height: 50.h,
                      width: 295.w,
                      decoration: BoxDecoration(
                        color: canSubmitVerification() ? priColor : formTextAreaDefault,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Submit Verification",
                        style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                      ),
                    );
                  },
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
