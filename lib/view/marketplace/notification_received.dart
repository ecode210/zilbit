import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';
import 'package:zilbit/controller/marketplace/marketplace_controller.dart';
import 'package:zilbit/view/home/dashboard.dart';
import 'package:zilbit/view/home/transaction_details.dart';

class NotificationReceived extends GetWidget<MarketplaceController> {
  const NotificationReceived({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int swipe = 0;
    return Scaffold(
      backgroundColor: priColor,
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dy < -20 && swipe == 0) {
            swipe = 1;
            Get.to(() => const TransactionDetails(), transition: Transition.downToUp);
          }
        },
        onPanEnd: (details) {
          swipe = 0;
        },
        child: SafeArea(
          child: Container(
            width: 375.w,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.find<HomeController>().currentPage.value = 0;
                        Get.offAll(() => Dashboard());
                      },
                      child: Icon(
                        Icons.close_rounded,
                        color: whiteColor,
                        size: 30.sp,
                      ),
                    ),
                    Icon(
                      Icons.download_rounded,
                      color: whiteColor,
                      size: 30.sp,
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Container(
                  height: 146.h,
                  width: 146.h,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(100.r),
                    border: Border.all(
                      color: whiteColor.withOpacity(0.25),
                      width: 2.w,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Container(
                    height: 120.h,
                    width: 120.h,
                    decoration: BoxDecoration(
                      color: priColor,
                      gradient: RadialGradient(
                        colors: [
                          Colors.deepPurple.shade200,
                          priColor,
                        ],
                        center: Alignment.center,
                      ),
                      borderRadius: BorderRadius.circular(100.r),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF60119E),
                          blurRadius: 15,
                          spreadRadius: 0,
                          offset: Offset(0, 5.h),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Container(
                      height: 94.h,
                      width: 94.h,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(100.r),
                        border: Border.all(
                          color: whiteColor,
                          width: 2.w,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.done_rounded,
                        color: Colors.white,
                        size: 60.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Success",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: whiteColor,
                        fontSize: 28.sp,
                      ),
                ),
                SizedBox(height: 15.h),
                Text(
                  "Assets received from vendor",
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(height: 10.h),
                Text(
                  "0.25167 BTC",
                  style: Theme.of(context).textTheme.overline!.copyWith(
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(height: 20.h),
                Text(
                  "Check Wallet",
                  style: Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 20.h),
                Text(
                  "How would you rate this Vendor",
                  style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 14.sp),
                ),
                SizedBox(height: 30.h),
                Container(
                  height: 64.h,
                  width: 220.w,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20.sp,
                        backgroundColor: Colors.amber.withOpacity(0.3),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "Zilli Brain",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(width: 2.w),
                      SvgPicture.asset(
                        "assets/svg/verified.svg",
                        height: 22.w,
                        width: 22.w,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                RatingBar.builder(
                  initialRating: 1,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemSize: 35.sp,
                  unratedColor: Colors.white.withOpacity(0.5),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                const Spacer(),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
                      color: Colors.white,
                      size: 30.sp,
                    ),
                    Positioned(
                      top: -8.h,
                      child: Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: Colors.white.withOpacity(0.5),
                        size: 30.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Text(
                  "Transaction Details",
                  style: Theme.of(context).textTheme.headline3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
