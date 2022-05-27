import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';
import 'package:zilbit/view/home/home.dart';
import 'package:zilbit/view/home/swap.dart';
import 'package:zilbit/view/home/widgets/bottom_nav_bar_button.dart';
import 'package:zilbit/view/marketplace/marketplace.dart';
import 'package:zilbit/view/wallet/wallet.dart';

class Dashboard extends GetWidget<HomeController> {
  Dashboard({Key? key}) : super(key: key);
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SizedBox(
          height: 812.h,
          width: 375.w,
          child: PageView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            controller: pageController,
            onPageChanged: (index) {
              controller.currentPage.value = index;
            },
            children: [
              Home(pageController: pageController),
              const Marketplace(),
              const Swap(),
              Wallet(pageController: pageController),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 80.h,
          width: 375.w,
          color: whiteColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavBarButton(
                title: "Home",
                icon: "home",
                index: 0,
                pageController: pageController,
              ),
              BottomNavBarButton(
                title: "Marketplace",
                icon: "marketplace",
                index: 1,
                pageController: pageController,
              ),
              BottomNavBarButton(
                title: "Swap",
                icon: "swap dash",
                index: 2,
                pageController: pageController,
              ),
              BottomNavBarButton(
                title: "Wallet",
                icon: "wallet",
                index: 3,
                pageController: pageController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
