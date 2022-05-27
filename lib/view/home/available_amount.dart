import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';
import 'package:zilbit/view/home/scan_qr_code.dart';
import 'package:zilbit/view/home/send_notification_received.dart';

class AvailableAmount extends GetWidget<HomeController> {
  const AvailableAmount({Key? key}) : super(key: key);

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
                      "Available Amount",
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    SizedBox(width: 25.w),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                width: 335.w,
                padding: EdgeInsets.all(15.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: formTextAreaDefault,
                    width: 1.w,
                  ),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green.withOpacity(0.3),
                      radius: 15.sp,
                      child: FaIcon(
                        FontAwesomeIcons.ethereum,
                        size: 15.sp,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "ETH Wallet",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: blackColor,
                            fontSize: 16.sp,
                          ),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "\$34,790.00",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: blackColor,
                                fontSize: 16.sp,
                              ),
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          "0.000451 ETH",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: 335.w,
                padding: EdgeInsets.all(15.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: formTextAreaDefault,
                    width: 1.w,
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Asset",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          "FIAT",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: blackColor,
                                fontSize: 16.sp,
                              ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: formHeaders,
                      size: 20.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Send to",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              SizedBox(height: 5.h),
              TextField(
                cursorColor: priColor,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: priColor,
                      width: 2.h,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: formTextAreaDefault,
                      width: 2.h,
                    ),
                  ),
                  hintText: "Enter username or wallet address",
                  hintStyle: Theme.of(context).textTheme.subtitle1,
                  prefixIcon: GestureDetector(
                    onTap: () {
                      Get.to(() => const ScanQrCode());
                    },
                    child: Container(
                      width: 10.w,
                      padding: EdgeInsets.only(left: 5.w),
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.qr_code_rounded,
                        color: blackColor,
                        size: 25.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Amount to send",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              SizedBox(height: 5.h),
              TextField(
                cursorColor: priColor,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: priColor,
                      width: 2.h,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: formTextAreaDefault,
                      width: 2.h,
                    ),
                  ),
                  hintText: "Enter send amount",
                  hintStyle: Theme.of(context).textTheme.subtitle1,
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(top: 20.h, right: 10.w),
                    child: Text(
                      "Send Max",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: priColor,
                            fontSize: 12.sp,
                          ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Get.to(() => const SendNotificationReceived());
                },
                child: Container(
                  height: 50.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    color: priColor,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Proceed",
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
