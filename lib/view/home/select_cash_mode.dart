import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';

class SelectCashMode extends StatelessWidget {
  const SelectCashMode({Key? key}) : super(key: key);

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
                      "Select cash mode",
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    SizedBox(width: 25.w),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  Container(
                    height: 44.h,
                    width: 44.h,
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "Mode 1",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 16.sp,
                          color: blackColor,
                        ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Divider(
                color: formTextAreaDefault,
                thickness: 1.h,
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Container(
                    height: 44.h,
                    width: 44.h,
                    decoration: BoxDecoration(
                      color: priColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "Mode 2",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 16.sp,
                          color: blackColor,
                        ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Divider(
                color: formTextAreaDefault,
                thickness: 1.h,
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Container(
                    height: 44.h,
                    width: 44.h,
                    decoration: BoxDecoration(
                      color: Colors.cyan.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "Mode 3",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 16.sp,
                          color: blackColor,
                        ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Divider(
                color: formTextAreaDefault,
                thickness: 1.h,
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
