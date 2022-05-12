import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/verification/verification_controller.dart';
import 'package:zilbit/view/verification/scan_file.dart';

class IdentityVerificationList extends GetWidget<VerificationController> {
  const IdentityVerificationList({Key? key, required this.title, required this.icon}) : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.frontDocument.value = "";
        controller.backDocument.value = "";
        Get.to(() => const ScanFile(cardSide: "FRONT"));
      },
      child: Container(
        height: 70.h,
        width: 335.w,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: priColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10.r),
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
      ),
    );
  }
}
