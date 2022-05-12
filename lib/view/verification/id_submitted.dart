import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';

class IDSubmitted extends StatelessWidget {
  const IDSubmitted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Container(
          height: 812.h,
          width: 375.w,
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              SizedBox(height: 150.h),
              Icon(
                Icons.check_circle_rounded,
                color: formTextAreaDefault.withOpacity(0.5),
                size: 150.sp,
              ),
              SizedBox(height: 30.h),
              Text(
                "Thank you",
                style: Theme.of(context).textTheme.overline!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 30.sp,
                    ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Your Document has been recieved and\nwould be reviewed within 3-5 days",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16.sp,
                      color: blackColor,
                    ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Get.back();
                  Get.back();
                  Get.back();
                  Get.back();
                },
                child: Container(
                  height: 50.h,
                  width: 325.w,
                  decoration: BoxDecoration(
                    color: priColor,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Done",
                    style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
