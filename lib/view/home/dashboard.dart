import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/home/home.dart';
import 'package:zilbit/view/marketplace/marketplace.dart';
import 'package:zilbit/view/trades/trades.dart';
import 'package:zilbit/view/wallet/wallet.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SizedBox(
          height: 812.h,
          width: 375.w,
          child: PageView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            controller: pageController,
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
        height: 60.h,
        width: 375.w,
        color: whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BouncingWidget(
              onPressed: () {
                HapticFeedback.lightImpact();
                pageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.fastLinearToSlowEaseIn,
                );
              },
              scaleFactor: 0.5,
              child: Icon(
                Icons.home_filled,
                color: priColor,
                size: 25.sp,
              ),
            ),
            BouncingWidget(
              onPressed: () {
                HapticFeedback.lightImpact();
                pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.fastLinearToSlowEaseIn,
                );
              },
              scaleFactor: 0.5,
              child: FaIcon(
                FontAwesomeIcons.placeOfWorship,
                color: priColor,
                size: 25.sp,
              ),
            ),
            BouncingWidget(
              onPressed: () {
                HapticFeedback.lightImpact();
                pageController.animateToPage(
                  2,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.fastLinearToSlowEaseIn,
                );
              },
              scaleFactor: 0.5,
              child: Icon(
                Icons.attach_money_rounded,
                color: priColor,
                size: 25.sp,
              ),
            ),
            BouncingWidget(
              onPressed: () {
                HapticFeedback.lightImpact();
                pageController.animateToPage(
                  3,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.fastLinearToSlowEaseIn,
                );
              },
              scaleFactor: 0.5,
              child: Icon(
                Icons.currency_exchange_rounded,
                color: priColor,
                size: 25.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
