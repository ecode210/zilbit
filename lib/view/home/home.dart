import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/home/widgets/app_bar_button.dart';
import 'package:zilbit/view/home/widgets/market_overview_graph.dart';
import 'package:zilbit/view/home/widgets/recent_trades.dart';
import 'package:zilbit/view/profile/user_profile.dart';
import 'package:zilbit/view/verification/verification.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.pageController}) : super(key: key);
  final PageController pageController;

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
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 225.h,
                  width: 375.w,
                  color: priColor,
                  alignment: Alignment.centerRight,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 275.h,
                    width: 375.w,
                    color: priColor,
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset(
                      "assets/svg/appbar pattern.svg",
                      height: 275.h,
                      width: 375.w,
                      fit: BoxFit.fitHeight,
                      color: whiteColor.withOpacity(0.1),
                    ),
                  ),
                ),
                Container(
                  height: 225.h,
                  width: 375.w,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "NGN 24,420,000",
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                "Active Balance",
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: whiteColor.withOpacity(0.6),
                                    ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Icon(
                            Icons.notifications_none_rounded,
                            color: whiteColor,
                            size: 30.sp,
                          ),
                          SizedBox(width: 20.w),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const UserProfile());
                            },
                            child: CircleAvatar(
                              radius: 22.w,
                              backgroundColor: whiteColor,
                              child: CircleAvatar(
                                radius: 20.w,
                                backgroundColor: Colors.amber.shade200,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const AppBarButton(title: "Send"),
                          const AppBarButton(title: "Deposit"),
                          AppBarButton(title: "Swap", pageController: pageController),
                          const AppBarButton(title: "Receive"),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Container(
              width: 375.w,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Market Overview",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15.sp,
                    color: formTextAreaDefault,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              padding: EdgeInsets.all(20.w),
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 17.w,
                        child: FaIcon(
                          FontAwesomeIcons.bitcoinSign,
                          color: whiteColor,
                          size: 20.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bitcoin",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: blackColor,
                                ),
                          ),
                          Text(
                            "BTC",
                            style: Theme.of(context).textTheme.caption!.copyWith(color: formHeaders),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const MarketOverviewGraph(color: Colors.green),
                      SizedBox(width: 20.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$39,397.73",
                            style: Theme.of(context).textTheme.button!.copyWith(
                                  color: blackColor,
                                  fontSize: 14.sp,
                                ),
                          ),
                          Text(
                            "+3.00%",
                            style: Theme.of(context).textTheme.button!.copyWith(
                                  color: Colors.green,
                                  fontSize: 12.sp,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Divider(
                    color: formTextAreaDefault,
                    thickness: 1.h,
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: priColor,
                        radius: 17.w,
                        child: FaIcon(
                          FontAwesomeIcons.ethereum,
                          color: whiteColor,
                          size: 20.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ethereum",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: blackColor,
                                ),
                          ),
                          Text(
                            "ETH",
                            style: Theme.of(context).textTheme.caption!.copyWith(color: formHeaders),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const MarketOverviewGraph(color: Colors.red),
                      SizedBox(width: 20.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$39,397.73",
                            style: Theme.of(context).textTheme.button!.copyWith(
                                  color: blackColor,
                                  fontSize: 14.sp,
                                ),
                          ),
                          Text(
                            "-11.00%",
                            style: Theme.of(context).textTheme.button!.copyWith(
                                  color: Colors.green,
                                  fontSize: 12.sp,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 160.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: [
                  SizedBox(width: 20.w),
                  Container(
                    height: 160.h,
                    width: 335.w,
                    padding: EdgeInsets.symmetric(horizontal: 17.w),
                    decoration: BoxDecoration(
                      color: priColor,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              """
Hey User! Did you
know you could""",
                              style: Theme.of(context).textTheme.caption,
                            ),
                            Text(
                              "Refer To Earn",
                              style: Theme.of(context).textTheme.headline1!.copyWith(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 10.h),
                            Container(
                              height: 30.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Create Referral Code",
                                style: Theme.of(context).textTheme.button!.copyWith(fontSize: 12.sp),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.only(bottom: 10.h),
                          alignment: Alignment.bottomCenter,
                          child: SvgPicture.asset(
                            "assets/svg/ethereum.svg",
                            height: 90.h,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          padding: EdgeInsets.only(top: 15.h),
                          alignment: Alignment.topCenter,
                          child: SvgPicture.asset(
                            "assets/svg/bitcoin.svg",
                            height: 90.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Container(
                    height: 160.h,
                    width: 335.w,
                    padding: EdgeInsets.symmetric(horizontal: 17.w),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFB731),
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 17.h),
                            Text(
                              """
Hey User! Did you
know you could""",
                              style: Theme.of(context).textTheme.caption,
                            ),
                            Text(
                              "Refer To Earn",
                              style: Theme.of(context).textTheme.headline1!.copyWith(fontWeight: FontWeight.w700),
                            ),
                            const Spacer(),
                            Container(
                              height: 30.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Create Referral Code",
                                style: Theme.of(context).textTheme.button!.copyWith(
                                      fontSize: 12.sp,
                                      color: const Color(0xFFFFB731),
                                    ),
                              ),
                            ),
                            SizedBox(height: 17.h),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.only(bottom: 10.h),
                          alignment: Alignment.bottomCenter,
                          child: SvgPicture.asset(
                            "assets/svg/ethereum.svg",
                            height: 90.h,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          padding: EdgeInsets.only(top: 15.h),
                          alignment: Alignment.topCenter,
                          child: SvgPicture.asset(
                            "assets/svg/bitcoin.svg",
                            height: 90.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(
                  color: priColor,
                  width: 2.w,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do more with Zilbit",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Be Limitless! Click the button below to\ncomplete your profile verification",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.caption!.copyWith(color: formTextAreaDefault),
                  ),
                  SizedBox(height: 10.h),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const Verification());
                    },
                    child: Container(
                      height: 50.h,
                      width: 295.w,
                      decoration: BoxDecoration(
                        color: priColor,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Complete Verification",
                        style: Theme.of(context).textTheme.button!.copyWith(
                              color: whiteColor,
                              fontSize: 14.sp,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              width: 375.w,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Trades",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15.sp,
                    color: formTextAreaDefault,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              width: 335.w,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: backgroundColor,
                    thickness: 1,
                  );
                },
                itemBuilder: (context, index) {
                  return const RecentTrades();
                },
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
