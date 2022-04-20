import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/marketplace/marketplace_controller.dart';
import 'package:zilbit/view/marketplace/buy_sell_crypto.dart';
import 'package:zilbit/view/marketplace/widgets/recent_feedback.dart';

class VendorProfile extends GetWidget<MarketplaceController> {
  const VendorProfile({Key? key}) : super(key: key);

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
                      "Vendor Profile",
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    Obx(
                      () {
                        return GestureDetector(
                          onTap: () {
                            controller.vendorFavorite.value = !controller.vendorFavorite.value;
                          },
                          child: Icon(
                            controller.vendorFavorite.value ? Icons.favorite_rounded : Icons.favorite_outline_rounded,
                            color: controller.vendorFavorite.value ? Colors.redAccent : formTextAreaDefault,
                            size: 25.sp,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: SizedBox(
                  width: 375.w,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: [
                      SizedBox(height: 20.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.amber.withOpacity(0.2),
                                radius: 27.sp,
                              ),
                              Positioned(
                                bottom: 5.h,
                                right: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 6.sp,
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 15.w),
                          SizedBox(
                            height: 54.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Zilli Brain",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: blackColor, fontSize: 20.sp),
                                ),
                                Text(
                                  "Active",
                                  style: Theme.of(context).textTheme.bodyText1,
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Container(
                            margin: EdgeInsets.only(top: 5.h),
                            child: SvgPicture.asset(
                              "assets/svg/verified.svg",
                              height: 25.w,
                              width: 25.w,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const Spacer(),
                          RatingBarIndicator(
                            rating: 3,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 4,
                            itemSize: 18.sp,
                            unratedColor: formTextAreaDefault,
                            direction: Axis.horizontal,
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Row(
                        children: [
                          Text(
                            "Email Verified",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                          ),
                          SizedBox(width: 3.w),
                          Icon(
                            Icons.verified_user_rounded,
                            color: Colors.green,
                            size: 15.sp,
                          ),
                          const Spacer(),
                          Text(
                            "Phone Verified",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                          ),
                          SizedBox(width: 3.w),
                          Icon(
                            Icons.verified_user_rounded,
                            color: Colors.green,
                            size: 15.sp,
                          ),
                          const Spacer(),
                          Text(
                            "ID Verified",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                          ),
                          SizedBox(width: 3.w),
                          Icon(
                            Icons.verified_user_rounded,
                            color: Colors.green,
                            size: 15.sp,
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "About this Offer",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Seller Rate",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
                            ),
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor,
                                    ),
                                children: [
                                  const TextSpan(
                                    text: "530 ",
                                  ),
                                  TextSpan(
                                    text: "NGN",
                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                          fontSize: 12.sp,
                                          color: blackColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Trade Time Limit",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
                            ),
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor,
                                    ),
                                children: [
                                  const TextSpan(
                                    text: "20 ",
                                  ),
                                  TextSpan(
                                    text: "mins",
                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                          fontSize: 12.sp,
                                          color: blackColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Limit",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
                            ),
                            RichText(
                              textAlign: TextAlign.right,
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor,
                                    ),
                                children: [
                                  const TextSpan(
                                    text: "1,000 - 200,000,000\n",
                                  ),
                                  TextSpan(
                                    text: "NGN",
                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                          fontSize: 12.sp,
                                          color: blackColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Payment Method",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
                            ),
                            Text(
                              "Bank Transfer",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    color: blackColor,
                                  ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 40.h),
                      Container(
                        height: 200.h,
                        width: 335.w,
                        padding: EdgeInsets.all(20.h),
                        decoration: BoxDecoration(
                          color: priColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Recent Feedbacks (69)",
                                style: Theme.of(context).textTheme.button!.copyWith(
                                      color: blackColor,
                                      fontSize: 14.sp,
                                    ),
                              ),
                            ),
                            SizedBox(height: 15.h),
                            Expanded(
                              child: SizedBox(
                                width: 335.w,
                                child: ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 2,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: 10.h);
                                  },
                                  itemBuilder: (context, index) {
                                    return const RecentFeedback();
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h),
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
                                style:
                                    Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 10.sp, color: priColor),
                              ),
                              const TextSpan(
                                  text:
                                      "(and elsewhere) may or may not be directly affiliated with, endorsed, nor sponsored by your selected payment method"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Get.to(() => const BuySellCrypto());
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
                    "Trade with vendor",
                    style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
