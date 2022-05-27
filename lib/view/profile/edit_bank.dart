import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';
import 'package:zilbit/view/profile/payment_methods.dart';
import 'package:zilbit/view/profile/widgets/merchant_text_field.dart';

class EditBank extends GetWidget<ProfileController> {
  const EditBank({Key? key}) : super(key: key);

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
                      "Edit Bank",
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    BouncingWidget(
                      onPressed: () {
                        bottomSheet(
                          height: 280.h,
                          dismissable: true,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/thrash bin.svg",
                                height: 60.h,
                                fit: BoxFit.fitHeight,
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                """
Are you sure you
want to delete?""",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: blackColor,
                                      fontSize: 20.sp,
                                    ),
                              ),
                              SizedBox(height: 30.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      height: 40.h,
                                      width: 140.w,
                                      decoration: BoxDecoration(
                                        color: warningColor,
                                        borderRadius: BorderRadius.circular(10.r),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Cancel",
                                        style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                      Get.off(() => const PaymentMethods());
                                      Get.back();
                                    },
                                    child: Container(
                                      height: 40.h,
                                      width: 140.w,
                                      decoration: BoxDecoration(
                                        color: priColor,
                                        borderRadius: BorderRadius.circular(10.r),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Delete",
                                        style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                      scaleFactor: 1,
                      child: Icon(
                        Icons.delete_forever_outlined,
                        color: warningColor,
                        size: 25.sp,
                      ),
                    ),
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
                        hint: "",
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
                        hint: "",
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
                        hint: "",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50.h,
                  width: 295.w,
                  decoration: BoxDecoration(
                    color: priColor,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Update",
                    style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
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
