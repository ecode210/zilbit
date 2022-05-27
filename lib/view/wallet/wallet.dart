import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';
import 'package:zilbit/view/home/widgets/send_bottomsheet.dart';
import 'package:zilbit/view/wallet/receive.dart';
import 'package:zilbit/view/wallet/widgets/wallet_graph.dart';
import 'package:zilbit/view/wallet/widgets/wallet_recent_activity.dart';

class Wallet extends StatelessWidget {
  Wallet({Key? key, required this.pageController}) : super(key: key);
  final PageController pageController;
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 812.h,
      color: backgroundColor,
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return false;
        },
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300.h,
                  width: 375.w,
                  color: priColor,
                  alignment: Alignment.centerRight,
                ),
                Positioned(
                  right: 0,
                  child: SvgPicture.asset(
                    "assets/svg/wallet appbar pattern.svg",
                    height: 400.h,
                    width: 500.w,
                    fit: BoxFit.cover,
                    color: whiteColor.withOpacity(0.1),
                  ),
                ),
                Container(
                  height: 300.h,
                  width: 375.w,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20.h),
                      SizedBox(
                        height: 24.h,
                        width: 335.w,
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_rounded,
                              color: whiteColor,
                              size: 25.sp,
                            ),
                            const Spacer(),
                            Text(
                              "BTC",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            const Spacer(),
                            Icon(
                              Icons.qr_code_rounded,
                              color: whiteColor,
                              size: 25.sp,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Available Balance",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: whiteColor,
                              fontSize: 16.sp,
                            ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "5.304670 BTC",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 35.sp),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "≈ 0.021567 USD",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: whiteColor,
                              fontSize: 12.sp,
                            ),
                      ),
                      SizedBox(height: 40.h),
                      Row(
                        children: [
                          Expanded(
                            child: BouncingWidget(
                              onPressed: () {
                                homeController.sendContact.value = "";
                                TransactionBottomSheet.send(context: context, controller: homeController);
                              },
                              scaleFactor: 0.5,
                              child: Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Send",
                                  style: Theme.of(context).textTheme.button,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => Receive());
                              },
                              child: Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Receive",
                                  style: Theme.of(context).textTheme.button,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                pageController.jumpToPage(2);
                              },
                              child: Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Swap",
                                  style: Theme.of(context).textTheme.button,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: SizedBox(
                width: 375.w,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "39,000.47 USD",
                                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                            color: warningColor,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Text(
                                      "≈ \$39,000",
                                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                            fontSize: 12.sp,
                                            color: blackColor,
                                          ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "+3.00%",
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                        color: Colors.green,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            const WalletGraph(),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Row(
                        children: [
                          SizedBox(width: 20.w),
                          Text(
                            "Recent Activity",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          const Spacer(),
                          Text(
                            "See all",
                            style: Theme.of(context).textTheme.button!.copyWith(fontSize: 14.sp),
                          ),
                          SizedBox(width: 20.w),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      const WalletRecentActivity(isEmpty: false),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
