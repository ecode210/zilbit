import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/verification/verification_controller.dart';
import 'package:zilbit/view/verification/identity_verification.dart';
import 'package:zilbit/view/verification/personal_information.dart';

class VerificationList extends GetWidget<VerificationController> {
  const VerificationList({Key? key, required this.title, required this.icon}) : super(key: key);
  final String title;
  final IconData icon;

  bool verified() {
    if (title == "Personal Information" && controller.personalInfoVerified.value) {
      return true;
    } else if (title == "Identity Verification" && controller.identityVerified.value) {
      return true;
    } else if (title == "Phone and Email Verification" && controller.phoneEmailVerified.value) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case "Personal Information":
            Get.to(() => const PersonalInformation());
            break;
          case "Identity Verification":
            Get.to(() => const IdentityVerification());
            break;
          case "Phone and Email Verification":
            Get.to(() => const PersonalInformation());
            break;
        }
      },
      child: Obx(
        () {
          return Container(
            height: 70.h,
            width: 335.w,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              color: priColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                color: verified() ? Colors.green : Colors.transparent,
                width: 2.w,
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: priColor.withOpacity(0.4),
                  radius: 22.sp,
                  child: FaIcon(
                    icon,
                    color: priColor,
                    size: 20.sp,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline4,
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: formHeaders,
                  size: 15.sp,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
