import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';
import 'package:zilbit/view/profile/create_referral_id.dart';
import 'package:zilbit/view/profile/invite_friends.dart';
import 'package:zilbit/view/profile/widgets/share.dart';

class ReferralID extends GetWidget<ProfileController> {
  const ReferralID({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Expanded(
          child: controller.hasReferralID.value
              ? SizedBox(
                  width: 335.w,
                  child: Column(
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
                          BouncingWidget(
                            onPressed: () {
                              Share.shareModal(context: context);
                            },
                            scaleFactor: 0.5,
                            child: Text(
                              "IVSTRZEE",
                              style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.add_circle_rounded,
                            color: priColor,
                            size: 20.sp,
                          ),
                          SizedBox(width: 10.w),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const InviteFriends());
                            },
                            child: Text(
                              "Invite Friends",
                              style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                            ),
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
                      SizedBox(height: 20.h),
                      if (controller.hasInvites.value)
                        Expanded(
                          child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 0),
                            itemCount: 10,
                            separatorBuilder: (context, index) {
                              return Divider(
                                color: formTextAreaDefault,
                                thickness: 1.h,
                              );
                            },
                            itemBuilder: (context, index) {
                              return Container(
                                width: 295.w,
                                margin: EdgeInsets.symmetric(vertical: 10.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Aaron",
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                color: blackColor,
                                                fontSize: 16.sp,
                                              ),
                                        ),
                                        Text(
                                          "25 Apr 2022",
                                          style: Theme.of(context).textTheme.bodyText1,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "+ NGN 100",
                                      style: Theme.of(context).textTheme.button!.copyWith(color: Colors.green),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      if (!controller.hasInvites.value) SizedBox(height: 40.h),
                      if (!controller.hasInvites.value)
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
                      if (!controller.hasInvites.value) SizedBox(height: 10.h),
                      if (!controller.hasInvites.value)
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Nothing to see yet",
                            style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 20.sp),
                          ),
                        ),
                      if (!controller.hasInvites.value) SizedBox(height: 20.h),
                      if (!controller.hasInvites.value)
                        Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => const InviteFriends());
                            },
                            child: Text(
                              "Invite Friends",
                              style: Theme.of(context).textTheme.button,
                            ),
                          ),
                        ),
                      if (!controller.hasInvites.value) const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50.h,
                          width: 335.w,
                          decoration: BoxDecoration(
                            color: priColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Withdraw",
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16.sp),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                )
              : SizedBox(
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
        );
      },
    );
  }
}
