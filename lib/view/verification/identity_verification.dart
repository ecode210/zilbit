import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/verification/verification_controller.dart';
import 'package:zilbit/view/verification/widgets/identity_verification_list.dart';

class IdentityVerification extends GetWidget<VerificationController> {
  const IdentityVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
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
                  "Identity\nVerification",
                  style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 25.sp),
                ),
                SizedBox(height: 15.h),
                Text(
                  "Kindly use a government issued\ndocument to enable us authenticate.",
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
                ),
                SizedBox(height: 30.h),
                const IdentityVerificationList(title: "National ID Card", icon: FontAwesomeIcons.addressCard),
                SizedBox(height: 20.h),
                const IdentityVerificationList(title: "Drivers License", icon: FontAwesomeIcons.idCard),
                SizedBox(height: 20.h),
                const IdentityVerificationList(title: "Passport", icon: FontAwesomeIcons.passport),
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
                              value: controller.identityVerificationTC.value,
                              fillColor: MaterialStateProperty.all(priColor),
                              checkColor: whiteColor,
                              shape: const StadiumBorder(),
                              splashRadius: 10,
                              onChanged: (value) {
                                controller.identityVerificationTC.value = value!;
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
