import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/profile/widgets/share.dart';

class Receive extends StatelessWidget {
  Receive({Key? key}) : super(key: key);

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
                      "Receive Ethereum",
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    SizedBox(width: 25.w),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                height: 380.h,
                width: 335.w,
                padding: EdgeInsets.symmetric(vertical: 15.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: formTextAreaDefault,
                    width: 1.h,
                  ),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    QrImage(
                      data: 'This is a simple QR code',
                      version: QrVersions.auto,
                      size: 200.sp,
                      gapless: false,
                    ),
                    SizedBox(height: 50.h),
                    Divider(
                      color: formTextAreaDefault,
                      thickness: 1.h,
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        SizedBox(width: 15.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Wallet address",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: blackColor),
                            ),
                            Text(
                              "0z890085...2e2a80Ea5",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: blackColor,
                                    fontSize: 16.sp,
                                  ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 40.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                            color: priColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Copy",
                            style: Theme.of(context).textTheme.button,
                          ),
                        ),
                        SizedBox(width: 15.w),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 30.h),
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
                          "Only send ethereum to this wallet. Always  double check your wallet address when pasted elsewhere to avoid loss of asset.",
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
              SizedBox(height: 30.h),
              Container(
                height: 75.h,
                width: 335.w,
                padding: EdgeInsets.all(15.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: formTextAreaDefault,
                    width: 1.h,
                  ),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green.withOpacity(0.3),
                      radius: 15.sp,
                      child: FaIcon(
                        FontAwesomeIcons.ethereum,
                        color: Colors.green,
                        size: 20.sp,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "\$34,790.00",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: blackColor,
                                fontSize: 16.sp,
                              ),
                        ),
                        Text(
                          "0.000451 ETH",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Share.shareModal(context: context);
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
                    "Share address",
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
