import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';
import 'package:zilbit/view/profile/widgets/merchant_text_field.dart';

class AddNewBank extends GetWidget<ProfileController> {
  const AddNewBank({Key? key}) : super(key: key);

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
                      "Add New Bank",
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    SizedBox(width: 25.w),
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
                      SizedBox(height: 30.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Account Name",
                          style: Theme.of(context).textTheme.headline3!.copyWith(
                                color: formHeaders,
                                fontSize: 14.sp,
                              ),
                        ),
                      ),
                      const ProfileTextField(
                        textInputType: TextInputType.name,
                        hint: "Enter your account name",
                      ),
                      SizedBox(height: 20.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Account Number",
                          style: Theme.of(context).textTheme.headline3!.copyWith(
                                color: formHeaders,
                                fontSize: 14.sp,
                              ),
                        ),
                      ),
                      const ProfileTextField(
                        textInputType: TextInputType.name,
                        hint: "Enter your account number",
                      ),
                      SizedBox(height: 20.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Bank Name",
                          style: Theme.of(context).textTheme.headline3!.copyWith(
                                color: formHeaders,
                                fontSize: 14.sp,
                              ),
                        ),
                      ),
                      const ProfileTextField(
                        textInputType: TextInputType.name,
                        hint: "Enter name of bank",
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
                                    value: controller.addBank.value,
                                    fillColor: MaterialStateProperty.all(priColor),
                                    checkColor: whiteColor,
                                    shape: const StadiumBorder(),
                                    splashRadius: 10,
                                    onChanged: (value) {
                                      controller.addBank.value = value!;
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: 40.h,
                  width: 295.w,
                  decoration: BoxDecoration(
                    color: priColor,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Add Bank",
                    style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
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
