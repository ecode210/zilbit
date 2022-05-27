import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';
import 'package:zilbit/view/profile/widgets/user_profile_list.dart';

class UserProfile extends GetWidget<ProfileController> {
  const UserProfile({Key? key}) : super(key: key);

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
                      "Profile",
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
                      SizedBox(height: 40.h),
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
                      const UserProfileList(
                        title: "Account",
                        icon: Icons.person_rounded,
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const UserProfileList(
                        title: "Payment Methods",
                        icon: Icons.credit_card_rounded,
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const UserProfileList(
                        title: "Security",
                        icon: Icons.shield_rounded,
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const UserProfileList(
                        title: "Notifications",
                        icon: Icons.notifications_rounded,
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const UserProfileList(
                        title: "Settings",
                        icon: Icons.settings_rounded,
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const UserProfileList(
                        title: "Refer and Earn",
                        icon: Icons.reply_rounded,
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      ),
                      SizedBox(height: 10.h),
                      const UserProfileList(
                        title: "Help and Support",
                        icon: Icons.info_rounded,
                      ),
                      SizedBox(height: 40.h),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 40.h,
                  width: 295.w,
                  decoration: BoxDecoration(
                    color: priColor,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Log Out",
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
