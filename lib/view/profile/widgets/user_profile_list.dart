import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/profile/account.dart';
import 'package:zilbit/view/profile/notifications.dart';
import 'package:zilbit/view/profile/payment_methods.dart';
import 'package:zilbit/view/profile/refer_and_earn.dart';
import 'package:zilbit/view/profile/security.dart';
import 'package:zilbit/view/profile/settings.dart';

class UserProfileList extends StatelessWidget {
  const UserProfileList({Key? key, required this.title, required this.icon}) : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case "Account":
            Get.to(() => const Account());
            break;
          case "Payment Methods":
            Get.to(() => const PaymentMethods());
            break;
          case "Security":
            Get.to(() => const Security());
            break;
          case "Notifications":
            Get.to(() => const Notifications());
            break;
          case "Settings":
            Get.to(() => const Settings());
            break;
          case "Refer and Earn":
            Get.to(() => const ReferEarn());
            break;
        }
      },
      child: Container(
        width: 375.w,
        color: whiteColor,
        child: Row(
          children: [
            Icon(
              icon,
              color: priColor,
              size: 25.sp,
            ),
            SizedBox(width: 15.w),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: formHeaders,
              size: 15.sp,
            ),
          ],
        ),
      ),
    );
  }
}
