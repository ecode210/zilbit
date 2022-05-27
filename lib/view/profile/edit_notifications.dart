import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';
import 'package:zilbit/view/profile/widgets/notifications_list.dart';

class EditNotifications extends GetWidget<ProfileController> {
  const EditNotifications({Key? key}) : super(key: key);

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
                      "Notifications",
                      style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        "Done",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: priColor,
                              fontSize: 15.sp,
                            ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: SizedBox(
                  width: 375.w,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: formTextAreaDefault,
                        thickness: 1.sp,
                      );
                    },
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return const NotificationsList(
                        title: "Refer to earn on Zilbit",
                        subtitle: "Do you know you could refer a friend and make money",
                        date: "25 Apr 2022",
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 70.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 40.h,
                      width: 140.w,
                      decoration: BoxDecoration(
                        color: warningColor,
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Delete all",
                        style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                      ),
                    ),
                    Container(
                      height: 40.h,
                      width: 140.w,
                      decoration: BoxDecoration(
                        color: priColor,
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Mark all as read",
                        style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                      ),
                    ),
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
