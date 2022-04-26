import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';
import 'package:zilbit/view/profile/create_referral_id.dart';

class ReferEarn extends GetWidget<ProfileController> {
  const ReferEarn({Key? key}) : super(key: key);

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
          child: Obx(
            () {
              return Column(
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
                          "Refer and Earn",
                          style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                        ),
                        const Spacer(),
                        SizedBox(width: 25.w),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  if (!controller.hasReferralID.value)
                    Expanded(
                      child: SizedBox(
                        width: 335.w,
                        child: ListView(
                          children: [
                            SizedBox(
                              height: 300.h,
                              width: 300.w,
                              child: Lottie.asset(
                                "assets/lottie/animated-giftbox.json",
                                height: 300.h,
                                width: 300.w,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              """
Refer to earn with
Zilbit""",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 20.sp),
                            ),
                            SizedBox(height: 20.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Text(
                                "Refer a Friend and get earn a percentage when they sign up. And each time they earn off referrals, You also EARN!",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.caption!.copyWith(color: blackColor),
                              ),
                            ),
                            SizedBox(height: 40.h),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const CreateReferralID());
                              },
                              child: Container(
                                height: 50.h,
                                width: 335.w,
                                decoration: BoxDecoration(
                                  color: priColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Create Referral ID",
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16.sp),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                          ],
                        ),
                      ),
                    ),
                  if (controller.hasReferralID.value)
                    Expanded(
                      child: SizedBox(
                        width: 335.w,
                        child: ListView(
                          children: [
                            SizedBox(height: 30.h),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Available Bonus",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "NGN 0.000",
                                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                      fontSize: 30.sp,
                                      color: blackColor,
                                    ),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "≈ 0.021567 BTC",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.solidCopy,
                                  color: priColor,
                                  size: 20.sp,
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "IVSTRZEE",
                                  style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.add_circle_rounded,
                                  color: priColor,
                                  size: 20.sp,
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "Invite Friends",
                                  style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                                ),
                              ],
                            ),
                            SizedBox(height: 40.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Bonus History",
                                  style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: formHeaders,
                                  size: 15.sp,
                                ),
                              ],
                            ),
                            SizedBox(height: 60.h),
                            SizedBox(
                              height: 180.h,
                              width: 180.w,
                              child: Lottie.asset(
                                "assets/lottie/grim-reaper.json",
                                height: 180.h,
                                width: 180.w,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
