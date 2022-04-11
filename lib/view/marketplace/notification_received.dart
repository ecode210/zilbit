import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/marketplace/marketplace_controller.dart';

class NotificationReceived extends GetWidget<MarketplaceController> {
  const NotificationReceived({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: priColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: 375.w,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.close_rounded,
                    color: whiteColor,
                    size: 20.sp,
                  ),
                  Icon(
                    Icons.download_rounded,
                    color: whiteColor,
                    size: 20.sp,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
