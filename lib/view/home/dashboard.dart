import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';
import 'package:zilbit/view/home/home.dart';
import 'package:zilbit/view/home/widgets/bottom_nav_bar_button.dart';
import 'package:zilbit/view/marketplace/marketplace.dart';
import 'package:zilbit/view/trades/trades.dart';
import 'package:zilbit/view/wallet/wallet.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  final PageController pageController = PageController();
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: priColor,
      body: SafeArea(
        child: SizedBox(
          height: 812.h,
          width: 375.w,
          child: PageView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            controller: pageController,
            onPageChanged: (index){
              homeController.currentPage.value = index;
            },
            children: const [
              Home(),
              Marketplace(),
              Trades(),
              Wallet(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70.h,
        width: 375.w,
        color: whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavBarButton(title: "Home", index: 0, pageController: pageController,),
            BottomNavBarButton(title: "Marketplace", index: 1, pageController: pageController,),
            BottomNavBarButton(title: "Trades", index: 2, pageController: pageController,),
            BottomNavBarButton(title: "Wallet", index: 3, pageController: pageController,),
          ],
        ),
      ),
    );
  }
}
