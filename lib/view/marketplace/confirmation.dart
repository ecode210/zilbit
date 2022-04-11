import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/marketplace/marketplace_controller.dart';
import 'package:zilbit/view/marketplace/notification_received.dart';

class Confirmation extends GetWidget<MarketplaceController> {
  const Confirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: priColor,
      body: SizedBox(
        width: 375.w,
        height: 812.h,
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll) {
            overScroll.disallowIndicator();
            return false;
          },
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: defaultTargetPlatform == TargetPlatform.iOS ? 190.h : 215.h,
                    width: 375.w,
                    color: priColor,
                    alignment: Alignment.centerRight,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: defaultTargetPlatform == TargetPlatform.iOS ? 240.h : 265.h,
                      width: 375.w,
                      color: priColor,
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        "assets/svg/confirmation appbar pattern.svg",
                        height: defaultTargetPlatform == TargetPlatform.iOS ? 240.h : 265.h,
                        width: 375.w,
                        fit: BoxFit.fitHeight,
                        color: whiteColor.withOpacity(0.1),
                      ),
                    ),
                  ),
                  Container(
                    width: 375.w,
                    padding: EdgeInsets.fromLTRB(20.w, 60.h, 20.w, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: whiteColor,
                            size: 25.sp,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Buy BTC",
                          style: Theme.of(context).textTheme.headline3!.copyWith(color: whiteColor),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.chat_rounded,
                          color: Colors.amber,
                          size: 25.sp,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 375.w,
                      padding: EdgeInsets.fromLTRB(0, 85.h, 0, 110.h),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35.r),
                          topRight: Radius.circular(35.r),
                        ),
                      ),
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        children: [
                          SizedBox(height: 10.h),
                          Container(
                            height: 60.h,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.amber.withOpacity(0.3),
                                  radius: 20.sp,
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "Account No.",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: blackColor),
                                ),
                                const Spacer(),
                                Text(
                                  "3132957309",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                        color: blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            height: 60.h,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.purple.withOpacity(0.3),
                                  radius: 20.sp,
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "Account Name",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: blackColor),
                                ),
                                const Spacer(),
                                Text(
                                  "Acholo Aaron",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                        color: blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            height: 60.h,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.green.withOpacity(0.3),
                                  radius: 20.sp,
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "Bank Name",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: blackColor),
                                ),
                                const Spacer(),
                                Text(
                                  "First Bank of Nigeria",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                        color: blackColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30.h),
                          CircularPercentIndicator(
                            radius: 80,
                            lineWidth: 10.w,
                            percent: 0.8,
                            backgroundColor: formTextAreaDefault,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: Text(
                              "00:05",
                              style: Theme.of(context).textTheme.overline!.copyWith(
                                    color: priColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            progressColor: priColor,
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            width: 335.w,
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFEBC6),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.error_outline_rounded,
                                  color: const Color(0xFFFFAA0D),
                                  size: 30.sp,
                                ),
                                SizedBox(width: 10.w),
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      "Kindly make payment before the timer runs out. Failure to do so would result to the trade cancelled",
                                      style: Theme.of(context).textTheme.button!.copyWith(
                                            color: const Color(0xFFFFAA0D),
                                            fontSize: 12.sp,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 10.sp),
                                children: [
                                  const TextSpan(text: "Zilbit and the services provided by zilbit on "),
                                  TextSpan(
                                    text: "zilbit.io ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 10.sp, color: priColor),
                                  ),
                                  const TextSpan(
                                      text:
                                          "(and elsewhere) may or may not be directly affiliated with, endorsed, nor sponsored by your selected payment method"),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Report a problem",
                              style: Theme.of(context).textTheme.button!.copyWith(color: warningColor),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: -75.h,
                      child: Container(
                        height: 150.h,
                        width: 295.w,
                        margin: EdgeInsets.symmetric(horizontal: 40.w),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              spreadRadius: 4,
                              offset: Offset(0, 4.h),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.amber.withOpacity(0.3),
                              radius: 15.sp,
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "Amount in FIAT",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "NGN 420,000",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: blackColor),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "≈ 0.021567BTC",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 100.h,
                        width: 375.w,
                        color: whiteColor,
                        child: Column(
                          children: [
                            SizedBox(height: 20.h),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const NotificationReceived());
                              },
                              child: Container(
                                height: 40.h,
                                width: 295.w,
                                decoration: BoxDecoration(
                                  color: priColor,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Confirm Payment",
                                  style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
