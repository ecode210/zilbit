import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/marketplace/marketplace_controller.dart';
import 'package:zilbit/view/marketplace/confirmation.dart';

class BuySellCrypto extends GetWidget<MarketplaceController> {
  const BuySellCrypto({Key? key}) : super(key: key);

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
                      "Buy BTC",
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.refresh_rounded,
                      color: blackColor,
                      size: 25.sp,
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
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.amber.withOpacity(0.3),
                            radius: 13.sp,
                          ),
                          SizedBox(width: 10.w),
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 3.sp,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Zilli Brain",
                            style: Theme.of(context).textTheme.button!.copyWith(
                                  fontSize: 12.sp,
                                  color: blackColor,
                                ),
                          ),
                          const Spacer(),
                          Text(
                            "🇳🇬",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
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
                      SizedBox(height: 5.h),
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
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor,
                                    ),
                                children: [
                                  const TextSpan(
                                    text: "1,000 -25,000,000,000 ",
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
                      SizedBox(height: 20.h),
                      Container(
                        height: 70.h,
                        width: 335.w,
                        padding: EdgeInsets.all(10.h),
                        decoration: BoxDecoration(
                          color: priColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.report_gmailerrorred_rounded,
                              color: priColor,
                              size: 35.sp,
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Text(
                                "ATTENTION! Carefully enter the right amount of crypto or FIAT to avoid loss of asset.",
                                style: Theme.of(context).textTheme.button!.copyWith(fontSize: 12.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Amount",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.bitcoin,
                            color: Colors.amber,
                            size: 25.sp,
                          ),
                          SizedBox(width: 5.w),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: formHeaders,
                            size: 25.sp,
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: TextField(
                              cursorColor: priColor,
                              keyboardType: TextInputType.number,
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
                                hintText: "Amount",
                                hintStyle: Theme.of(context).textTheme.subtitle1,
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(top: 15.h, left: 15.w),
                                  child: Text(
                                    "All",
                                    style: Theme.of(context).textTheme.button,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Crypto Amount",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(
                              "0.0234",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: blackColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "FIAT Amount",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: blackColor,
                                    ),
                                children: [
                                  const TextSpan(
                                    text: "50,000 ",
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
                      SizedBox(height: 20.h),
                      Container(
                        height: 85.h,
                        width: 335.w,
                        padding: EdgeInsets.all(10.h),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFEBC6),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.report_gmailerrorred_rounded,
                              color: const Color(0xFFFFAA0D),
                              size: 35.sp,
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Text(
                                "ATTENTION! Please read the following carefully. Failure to comply might result in failed transaction and financial loss.",
                                style: Theme.of(context).textTheme.button!.copyWith(
                                      fontSize: 12.sp,
                                      color: const Color(0xFFFFAA0D),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "About this Offer",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: formTextAreaDefault),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Trade Amount",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
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
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Payment method",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(
                              "Bank Transfer",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: blackColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 30.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Vendor's Terms",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: formTextAreaDefault),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "I collect an additional fee of NGN100 to cover up the zilbit gas fee",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
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
                      SizedBox(height: 20.h),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Report a problem",
                          style: Theme.of(context).textTheme.button!.copyWith(color: warningColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Get.to(() => const Confirmation());
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
                    "Proceed",
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
