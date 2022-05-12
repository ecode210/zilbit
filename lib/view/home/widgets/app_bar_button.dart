import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';
import 'package:zilbit/view/home/widgets/send_bottomsheet.dart';
import 'package:zilbit/view/wallet/receive.dart';

class AppBarButton extends GetWidget<HomeController> {
  const AppBarButton({Key? key, required this.title, this.pageController}) : super(key: key);
  final String title;
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            switch (title) {
              case "Send":
                controller.sendContact.value = "";
                TransactionBottomSheet.send(context: context, controller: controller);
                break;
              case "Deposit":
                TransactionBottomSheet.modeOfDeposit(context: context, controller: controller);
                break;
              case "Swap":
                pageController!.animateToPage(
                  2,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.fastLinearToSlowEaseIn,
                );
                break;
              case "Receive":
                Get.to(() => Receive());
                break;
            }
          },
          child: Container(
            height: 58.h,
            width: 58.w,
            decoration: BoxDecoration(
              color: secColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/svg/${title.toLowerCase()}.svg",
              height: 25.h,
              width: 25.w,
              color: whiteColor,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(color: whiteColor),
        )
      ],
    );
  }
}
