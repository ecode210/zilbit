import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';

class TransactionDetails extends GetWidget<HomeController> {
  const TransactionDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: whiteColor,
        resizeToAvoidBottomInset: false,
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
                        "Transaction Details",
                        style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                      ),
                      const Spacer(),
                      SizedBox(width: 25.w),
                    ],
                  ),
                ),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transaction status",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: blackColor,
                            fontSize: 16.sp,
                          ),
                    ),
                    Text(
                      "Successful",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16.sp,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "From",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: blackColor,
                            fontSize: 16.sp,
                          ),
                    ),
                    Text(
                      "Wallet(afg45..........nk78jh)",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16.sp,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "To",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: blackColor,
                            fontSize: 16.sp,
                          ),
                    ),
                    Text(
                      "Wallet(afg45..........nk78jh)",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16.sp,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Zilbit fee",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: blackColor,
                                    fontSize: 16.sp,
                                  ),
                            ),
                            SizedBox(width: 5.w),
                            Icon(
                              Icons.info_rounded,
                              color: blackColor,
                              size: 20.sp,
                            ),
                          ],
                        ),
                        Text(
                          "Includes taxes",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    Text(
                      "NGN 1.49",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16.sp,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Amount sent",
                      style: Theme.of(context).textTheme.button!.copyWith(
                            color: blackColor,
                          ),
                    ),
                    Text(
                      "0.25167 ETH",
                      style: Theme.of(context).textTheme.button!.copyWith(
                            color: blackColor,
                          ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  "Do you know you could earn 20% off a refferal",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(height: 30.h),
                Text(
                  "Learn more",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: priColor),
                ),
                SizedBox(height: 40.h),
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      height: 1.h,
                      width: 335.w,
                    ),
                    Positioned(
                      left: -20.w,
                      child: SizedBox(
                        height: 1.h,
                        width: 375.w,
                        child: Divider(
                          color: formTextAreaDefault,
                          thickness: 1.h,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 55.h,
                          width: 55.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(
                              color: blackColor,
                              width: 1.h,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: FaIcon(
                            FontAwesomeIcons.download,
                            size: 25.sp,
                            color: blackColor,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "Download",
                          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 55.h,
                          width: 55.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(
                              color: blackColor,
                              width: 1.h,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: FaIcon(
                            FontAwesomeIcons.shareNodes,
                            size: 25.sp,
                            color: blackColor,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "Share",
                          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 55.h,
                          width: 55.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(
                              color: blackColor,
                              width: 1.h,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: FaIcon(
                            FontAwesomeIcons.circleQuestion,
                            size: 25.sp,
                            color: blackColor,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "Report",
                          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
