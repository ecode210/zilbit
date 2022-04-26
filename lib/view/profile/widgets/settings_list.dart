import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';

class SettingsList extends GetWidget<ProfileController> {
  const SettingsList({Key? key, required this.title, this.subtitle = ""}) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
              ),
              SizedBox(height: 5.h),
              if (subtitle != "")
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                ),
            ],
          ),
        ),
        SizedBox(width: 40.w),
        if (title != "Dark Mode")
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: formHeaders,
            size: 15.sp,
          ),
        if (title == "Dark Mode")
          SizedBox(
            width: 40.w,
            child: Obx(
              () {
                return FittedBox(
                  fit: BoxFit.contain,
                  child: CupertinoSwitch(
                    activeColor: priColor,
                    value: controller.darkMode.value,
                    onChanged: (value) {
                      controller.darkMode.value = value;
                    },
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
