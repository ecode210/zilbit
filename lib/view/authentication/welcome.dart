import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/home/dashboard.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {
  late AnimationController animController;
  late Animation textPositionAnimation;
  late Animation textScaleAnimation;
  late Animation dummyPositionAnimation;
  late Animation dummyOpacityAnimation;
  late Animation backgroundPositionAnimation;

  @override
  void initState() {
    super.initState();

    animController = AnimationController(vsync: this, duration: const Duration(seconds: 3));

    textPositionAnimation = TweenSequence(
      <TweenSequenceItem>[
        TweenSequenceItem<Offset>(
          tween: Tween<Offset>(begin: Offset(300.w, 0), end: Offset.zero),
          weight: 60,
        ),
        TweenSequenceItem<Offset>(
          tween: Tween<Offset>(begin: Offset.zero, end: Offset(0, -150.h)),
          weight: 40,
        ),
        TweenSequenceItem<Offset>(
          tween: Tween<Offset>(begin: Offset(0, -150.h), end: Offset(0, -150.h)),
          weight: 150,
        ),
        TweenSequenceItem<Offset>(
          tween: Tween<Offset>(begin: Offset(0, -150.h), end: Offset(0, -910.h)),
          weight: 50,
        ),
      ],
    ).animate(animController);
    textScaleAnimation = TweenSequence(
      <TweenSequenceItem>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 50.sp, end: 50.sp),
          weight: 60,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 50.sp, end: 40.sp),
          weight: 40,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 40.sp, end: 40.sp),
          weight: 200,
        ),
      ],
    ).animate(animController);

    dummyPositionAnimation = TweenSequence(
      <TweenSequenceItem>[
        TweenSequenceItem<Offset>(
          tween: Tween<Offset>(begin: Offset(0, 160.h), end: Offset(0, 160.h)),
          weight: 150,
        ),
        TweenSequenceItem<Offset>(
          tween: Tween<Offset>(begin: Offset(0, 160.h), end: Offset(0, 100.h)),
          weight: 50,
        ),
        TweenSequenceItem<Offset>(
          tween: Tween<Offset>(begin: Offset(0, 100.h), end: Offset(0, 160.h)),
          weight: 50,
        ),
        TweenSequenceItem<Offset>(
          tween: Tween<Offset>(begin: Offset(0, 160.h), end: Offset(0, -600.h)),
          weight: 50,
        ),
      ],
    ).animate(animController);
    dummyOpacityAnimation = TweenSequence(
      <TweenSequenceItem>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0, end: 0),
          weight: 60,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0, end: 1),
          weight: 40,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1, end: 1),
          weight: 200,
        ),
      ],
    ).animate(animController);

    backgroundPositionAnimation = TweenSequence(
      <TweenSequenceItem>[
        TweenSequenceItem<Offset>(
          tween: Tween<Offset>(begin: Offset(0, 900.h), end: Offset(0, 900.h)),
          weight: 250,
        ),
        TweenSequenceItem<Offset>(
          tween: Tween<Offset>(begin: Offset(0, 900.h), end: Offset(0, 50.h)),
          weight: 50,
        ),
      ],
    ).animate(animController);

    animController.forward().whenComplete(() => Get.offAll(() => Dashboard()));
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SizedBox(
        height: 812.h,
        width: 375.w,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 812.h,
              width: 375.w,
              alignment: Alignment.center,
              child: AnimatedBuilder(
                animation: animController,
                builder: (context, child) {
                  return Transform.translate(
                    offset: textPositionAnimation.value,
                    child: Text(
                      """
Welcome
to Zilbit.""",
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: priColor,
                            fontSize: textScaleAnimation.value,
                            height: 1.1,
                          ),
                    ),
                  );
                },
              ),
            ),
            // TODO: Add dummy icon
            Container(
              height: 812.h,
              width: 375.w,
              alignment: Alignment.center,
              child: AnimatedBuilder(
                animation: animController,
                builder: (context, child) {
                  return Transform.translate(
                    offset: dummyPositionAnimation.value,
                    child: Opacity(
                      opacity: dummyOpacityAnimation.value,
                      child: Container(
                        height: 320.h,
                        width: 200.w,
                        decoration: BoxDecoration(
                          color: priColor,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 900.h,
                width: 375.w,
                alignment: Alignment.center,
                child: AnimatedBuilder(
                  animation: animController,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: backgroundPositionAnimation.value,
                      child: Container(
                        height: 900.h,
                        width: 375.w,
                        decoration: BoxDecoration(
                          color: priColor,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
