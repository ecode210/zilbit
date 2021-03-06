import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/authentication/register.dart';
import 'package:zilbit/view/authentication/widgets/login.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: priColor,
        body: Stack(
          children: [
            SizedBox(
              height: 812.h,
              width: 375.w,
            ),
            //TODO: Add dummy icon
            SizedBox(
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
                    style: Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.w600),
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
                        color: whiteColor,
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
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Login());
                    },
                    child: Text(
                      "Already have an account? Sign in",
                      style: Theme.of(context).textTheme.caption,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
