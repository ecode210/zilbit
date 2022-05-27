import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';
import 'package:zilbit/view/home/widgets/confirm_swap_bottomsheet.dart';
import 'package:zilbit/view/home/widgets/numeric_button.dart';
import 'package:zilbit/view/home/widgets/swap_bottomsheet.dart';

class Swap extends StatefulWidget {
  const Swap({Key? key}) : super(key: key);

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {
  final controller = Get.find<HomeController>();
  final PageController pageController = PageController();
  final TextEditingController pinController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    pageController.dispose();
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 375.w,
        height: 812.h,
        color: backgroundColor,
        child: Column(
          children: [
            SizedBox(height: 20.h),
            SizedBox(
              height: 24.h,
              width: 375.w,
              child: Row(
                children: [
                  SizedBox(width: 20.w),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black,
                      size: 25.sp,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Swap",
                    style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 25.h,
                    width: 25.w,
                  ),
                  SizedBox(width: 20.w),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              height: 115.h,
              width: 335.w,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "From",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: blackColor,
                            ),
                      ),
                      Text(
                        "Use max",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: blackColor,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 65.h,
                          child: TextField(
                            controller: pinController,
                            focusNode: focusNode,
                            onTap: () {
                              focusNode.unfocus();
                            },
                            cursorColor: Colors.transparent,
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: blackColor,
                                  fontSize: 30.sp,
                                ),
                            decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: "0",
                              hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: formTextAreaDefault,
                                    fontSize: 30.sp,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      BouncingWidget(
                        onPressed: () {
                          bottomSheet(
                            dismissable: true,
                            child: SwapBottomSheet(
                              pageController: pageController,
                              index: 0,
                            ),
                          );
                        },
                        scaleFactor: 0.5,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green.withOpacity(0.3),
                              radius: 13.sp,
                              child: FaIcon(
                                FontAwesomeIcons.ethereum,
                                color: Colors.green,
                                size: 15.sp,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "ETH",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: blackColor),
                            ),
                            SizedBox(width: 5.w),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: formTextAreaDefault,
                              size: 20.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "\$0.00",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: formTextAreaDefault,
                          fontSize: 14.sp,
                          height: 0.5,
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 115.h,
                  width: 335.w,
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "To",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: blackColor,
                            ),
                      ),
                      Row(
                        children: [
                          Text(
                            "0",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: formTextAreaDefault,
                                  fontSize: 30.sp,
                                ),
                          ),
                          const Spacer(),
                          BouncingWidget(
                            onPressed: () {
                              bottomSheet(
                                dismissable: true,
                                child: SwapBottomSheet(
                                  pageController: pageController,
                                  index: 1,
                                ),
                              );
                            },
                            scaleFactor: 0.5,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.amber.withOpacity(0.3),
                                  radius: 13.sp,
                                  child: FaIcon(
                                    FontAwesomeIcons.bitcoinSign,
                                    color: Colors.amber,
                                    size: 15.sp,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "BTC",
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: blackColor),
                                ),
                                SizedBox(width: 5.w),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: formTextAreaDefault,
                                  size: 20.sp,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "\$0.00",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: formTextAreaDefault,
                              fontSize: 14.sp,
                            ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -27.h,
                  child: Container(
                    width: 335.w,
                    alignment: Alignment.center,
                    child: BouncingWidget(
                      onPressed: () {},
                      scaleFactor: 0.5,
                      child: Container(
                        height: 40.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: formHeaders,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.arrowUp,
                              color: whiteColor,
                              size: 15.sp,
                            ),
                            SizedBox(width: 2.w),
                            FaIcon(
                              FontAwesomeIcons.arrowDown,
                              color: whiteColor,
                              size: 15.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NumericButton(pinController: pinController, number: "1"),
                NumericButton(pinController: pinController, number: "2"),
                NumericButton(pinController: pinController, number: "3"),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NumericButton(pinController: pinController, number: "4"),
                NumericButton(pinController: pinController, number: "5"),
                NumericButton(pinController: pinController, number: "6"),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NumericButton(pinController: pinController, number: "7"),
                NumericButton(pinController: pinController, number: "8"),
                NumericButton(pinController: pinController, number: "9"),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NumericButton(pinController: pinController, number: "•"),
                NumericButton(pinController: pinController, number: "0"),
                NumericButton(pinController: pinController, number: "<"),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                if (controller.swap.value) {
                  bottomSheet(
                    dismissable: true,
                    child: ConfirmSwapBottomSheet(pinController: pinController),
                  );
                }
              },
              child: Obx(
                () {
                  return Container(
                    height: 50.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      color: controller.swap.value ? priColor : formTextAreaDefault,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Swap",
                      style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
