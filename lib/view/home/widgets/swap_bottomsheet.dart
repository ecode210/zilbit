import 'dart:async';

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';

class SwapBottomSheet extends StatefulWidget {
  const SwapBottomSheet({Key? key, required this.pageController, required this.index}) : super(key: key);
  final PageController pageController;
  final int index;

  @override
  State<SwapBottomSheet> createState() => _SwapBottomSheetState();
}

class _SwapBottomSheetState extends State<SwapBottomSheet> {
  final controller = Get.find<HomeController>();

  void fromAndTo() {
    switch (widget.index) {
      case 0:
        controller.swapPosition.value = 0;
        controller.swapWidth.value = 50;
        widget.pageController.animateToPage(
          0,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
        break;
      case 1:
        controller.swapPosition.value = 55;
        controller.swapWidth.value = 30;
        widget.pageController.animateToPage(
          1,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 100),
      () => fromAndTo(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        Text(
          "Swap",
          style: Theme.of(context).textTheme.button!.copyWith(
                color: blackColor,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
              ),
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            BouncingWidget(
              onPressed: () {
                controller.swapPosition.value = 0;
                controller.swapWidth.value = 50;
                widget.pageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              },
              scaleFactor: 0.5,
              child: Container(
                width: 50.w,
                alignment: Alignment.centerLeft,
                child: Text(
                  "From",
                  style: Theme.of(context).textTheme.button!.copyWith(
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                      ),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            BouncingWidget(
              onPressed: () {
                controller.swapPosition.value = 55;
                controller.swapWidth.value = 30;
                widget.pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              },
              scaleFactor: 0.5,
              child: Container(
                width: 30.w,
                alignment: Alignment.centerLeft,
                child: Text(
                  "To",
                  style: Theme.of(context).textTheme.button!.copyWith(
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                      ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Stack(
          children: [
            SizedBox(
              height: 3.h,
              width: 335.w,
            ),
            Obx(
              () {
                return AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  left: controller.swapPosition.value.w,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: 3.h,
                    width: controller.swapWidth.value.w,
                    decoration: BoxDecoration(
                      color: priColor,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Expanded(
          child: SizedBox(
            width: 335.w,
            child: PageView(
              controller: widget.pageController,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (index) {
                controller.swapPosition.value = index == 0 ? 0 : 55;
                controller.swapWidth.value = index == 0 ? 50 : 30;
              },
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: SizedBox(
                        height: 40.h,
                        child: TextField(
                          cursorColor: priColor,
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: priColor,
                                width: 2.h,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: formTextAreaDefault,
                                width: 2.h,
                              ),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(top: defaultTargetPlatform == TargetPlatform.iOS ? 10.h : 7.h),
                              child: FaIcon(
                                FontAwesomeIcons.magnifyingGlass,
                                color: formTextAreaDefault,
                                size: 20.sp,
                              ),
                            ),
                            hintText: "Search Crypto",
                            hintStyle: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(bottom: defaultTargetPlatform == TargetPlatform.iOS ? 20.h : 0),
                        width: double.infinity,
                        child: ListView.separated(
                          itemCount: 10,
                          physics: const BouncingScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return Divider(
                              color: formTextAreaDefault,
                              thickness: 1.h,
                            );
                          },
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 60.h,
                              width: 335.w,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.green.withOpacity(0.3),
                                    radius: 25.sp,
                                    child: FaIcon(
                                      FontAwesomeIcons.ethereum,
                                      color: Colors.green,
                                      size: 30.sp,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ethereum",
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                              fontSize: 12.sp,
                                            ),
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        "ETH",
                                        style: Theme.of(context).textTheme.button!.copyWith(
                                              color: blackColor,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: SizedBox(
                        height: 40.h,
                        child: TextField(
                          cursorColor: priColor,
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: priColor,
                                width: 2.h,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: formTextAreaDefault,
                                width: 2.h,
                              ),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: FaIcon(
                                FontAwesomeIcons.magnifyingGlass,
                                color: formTextAreaDefault,
                                size: 20.sp,
                              ),
                            ),
                            hintText: "Search Crypto",
                            hintStyle: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(bottom: 20.h),
                        width: double.infinity,
                        child: ListView.separated(
                          itemCount: 10,
                          physics: const BouncingScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return Divider(
                              color: formTextAreaDefault,
                              thickness: 1.h,
                            );
                          },
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 60.h,
                              width: 335.w,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.amber.withOpacity(0.3),
                                    radius: 25.sp,
                                    child: FaIcon(
                                      FontAwesomeIcons.bitcoinSign,
                                      color: Colors.amber,
                                      size: 30.sp,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bitcoin",
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                              fontSize: 12.sp,
                                            ),
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        "BTC",
                                        style: Theme.of(context).textTheme.button!.copyWith(
                                              color: blackColor,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
