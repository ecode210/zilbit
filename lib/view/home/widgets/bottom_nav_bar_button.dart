import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';

class BottomNavBarButton extends GetWidget<HomeController> {
  const BottomNavBarButton(
      {Key? key, required this.title, required this.index, required this.pageController})
      : super(key: key);
  final String title;
  final int index;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BouncingWidget(
        onPressed: () {
          HapticFeedback.lightImpact();
          controller.currentPage.value = index;
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastLinearToSlowEaseIn,
          );
        },
        scaleFactor: 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/svg/${title.toLowerCase()}.svg",
              height: 30.h,
              width: 30.h,
              color: controller.currentPage.value == index
                  ? priColor
                  : formTextAreaDefault,
            ),
            Text(
              title,
              style: controller.currentPage.value == index ? Theme.of(context).textTheme.subtitle2!.copyWith(color: priColor) : Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
      );
    },);
  }
}
