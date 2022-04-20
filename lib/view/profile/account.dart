import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';
import 'package:zilbit/view/profile/merchant_account.dart';
import 'package:zilbit/view/profile/widgets/account_list.dart';

class Account extends GetWidget<ProfileController> {
  const Account({Key? key}) : super(key: key);

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
                      "Account",
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.card_giftcard_rounded,
                        color: formTextAreaDefault,
                        size: 25.sp,
                      ),
                    )
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Verify Identity",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
                              ),
                              SizedBox(width: 10.w),
                              Icon(
                                Icons.error_rounded,
                                color: warningColor,
                                size: 20.sp,
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "Complete your verification and do more with zilbit.",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const AccountList(
                        title: "Referral ID",
                        subtitle: "ZB_User1a4",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const AccountList(
                        title: "Username",
                        subtitle: "Change your username. This is what others see when they look at your profile.",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const AccountList(
                        title: "Email",
                        subtitle: "preshaacholo@gmail.com",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const AccountList(
                        title: "Phone number",
                        subtitle: "08123456789",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const AccountList(
                        title: "Payment Currency",
                        subtitle: "Naira",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const AccountList(
                        title: "Language",
                        subtitle: "English",
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const MerchantAccount());
                        },
                        child: Container(
                          color: whiteColor,
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.shop,
                                color: priColor,
                                size: 20.sp,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "Merchant Account",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: formHeaders,
                                size: 15.sp,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                    ],
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
