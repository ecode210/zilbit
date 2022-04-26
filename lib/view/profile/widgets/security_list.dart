import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';

class SecurityList extends GetWidget<ProfileController> {
  const SecurityList({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
          ),
        ),
        SizedBox(width: 40.w),
        if (title != "Use Face ID" && title != "App Version")
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: formHeaders,
            size: 15.sp,
          ),
        if (title == "App Version")
          Text(
            "0.1",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
          ),
        if (title == "Use Face ID")
          SizedBox(
            width: 40.w,
            child: Obx(
              () {
                return FittedBox(
                  fit: BoxFit.contain,
                  child: CupertinoSwitch(
                    activeColor: priColor,
                    value: controller.useFaceID.value,
                    onChanged: (value) {
                      controller.useFaceID.value = value;
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
