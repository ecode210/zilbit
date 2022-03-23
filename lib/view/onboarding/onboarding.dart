import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/authentication/register.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: priColor,
      body: SizedBox(
        height: 812.h,
        width: 375.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 488.h,
              width: 375.w,
              child: SvgPicture.asset(
                "assets/svg/onboarding pattern.svg",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 44.h,
              width: 200.w,
            ),
            SizedBox(height: 14.h),
            Text(
              """
Control your Assets
with Zilbit""",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 25.h),
            GestureDetector(
              onTap: () {
                Get.to(() => Register());
              },
              child: Container(
                width: 343.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Get Started",
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            SizedBox(height: 14.h),
            Text(
              "Already have an account? Sign in",
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
    );
  }
}
