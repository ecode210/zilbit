import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/verification/verification_controller.dart';
import 'package:zilbit/view/authentication/widgets/auth_text_field.dart';

class PersonalInformation extends GetWidget<VerificationController> {
  const PersonalInformation({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                "Personal\nInformation",
                style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 25.sp),
              ),
              SizedBox(height: 30.h),
              Text(
                "First Name",
                style: Theme.of(context).textTheme.headline4!.copyWith(color: formHeaders),
              ),
              const AuthTextField(
                textInputType: TextInputType.emailAddress,
                hintText: "Enter your first name",
              ),
              SizedBox(height: 20.h),
              Text(
                "Surname",
                style: Theme.of(context).textTheme.headline4!.copyWith(color: formHeaders),
              ),
              const AuthTextField(
                textInputType: TextInputType.emailAddress,
                hintText: "Enter your surname",
              ),
              SizedBox(height: 20.h),
              Text(
                "Other Names",
                style: Theme.of(context).textTheme.headline4!.copyWith(color: formHeaders),
              ),
              const AuthTextField(
                textInputType: TextInputType.emailAddress,
                hintText: "Enter your other names",
              ),
              SizedBox(height: 20.h),
              Text(
                "Date of Birth",
                style: Theme.of(context).textTheme.headline4!.copyWith(color: formHeaders),
              ),
              AuthTextField(
                textInputType: TextInputType.emailAddress,
                hintText: "DD-MM-YYYY",
                suffixIcon: Container(
                  width: 10.w,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.calendar_today_rounded,
                    color: formHeaders,
                    size: 20.sp,
                  ),
                ),
              ),
              const Spacer(),
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
                            value: controller.personalInfoTC.value,
                            fillColor: MaterialStateProperty.all(priColor),
                            checkColor: whiteColor,
                            shape: const StadiumBorder(),
                            splashRadius: 10,
                            onChanged: (value) {
                              controller.personalInfoTC.value = value!;
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
              SizedBox(height: 40.h),
              GestureDetector(
                onTap: () {
                  controller.personalInfoVerified.value = true;
                  Get.back();
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 50.h,
                    width: 295.w,
                    decoration: BoxDecoration(
                      color: priColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Submit",
                      style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                    ),
                  ),
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
