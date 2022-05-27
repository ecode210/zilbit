import 'dart:async';

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';
import 'package:zilbit/view/home/available_amount.dart';
import 'package:zilbit/view/home/search_users.dart';
import 'package:zilbit/view/home/select_cash_mode.dart';

class TransactionBottomSheet {
  static send({required BuildContext context, required HomeController controller}) {
    bottomSheet(
      dismissable: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
              Get.to(() => const SearchUsers());
            },
            child: Obx(
              () {
                return Row(
                  children: [
                    if (controller.sendContact.value != "")
                      CircleAvatar(
                        backgroundColor: Colors.amber.withOpacity(0.3),
                        radius: 20.sp,
                      ),
                    if (controller.sendContact.value == "")
                      FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: formHeaders,
                        size: 25.sp,
                      ),
                    SizedBox(width: 10.w),
                    Text(
                      controller.sendContact.value == "" ? "Search User" : controller.sendContact.value,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(color: blackColor),
                    ),
                    const Spacer(),
                    FaIcon(
                      FontAwesomeIcons.plus,
                      color: formHeaders,
                      size: 20.sp,
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            width: 335.w,
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: const Color(0xFFFFEBC6),
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.error_outline_rounded,
                  color: const Color(0xFFFFAA0D),
                  size: 30.sp,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: SizedBox(
                    child: Text(
                      "For a new Zilbit user, click the Add(+) button and for a new transaction, leave the “search user” field empty",
                      style: Theme.of(context).textTheme.button!.copyWith(
                            color: const Color(0xFFFFAA0D),
                            fontSize: 12.sp,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "Select Currency",
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 5.h),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                Divider(
                  color: formTextAreaDefault,
                  thickness: 1.h,
                ),
                SizedBox(height: 10.h),
                BouncingWidget(
                  onPressed: () {
                    controller.sendCurrency.value = 0;
                  },
                  scaleFactor: 0.2,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 17.sp,
                        child: FaIcon(
                          FontAwesomeIcons.bitcoinSign,
                          size: 20.sp,
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Crypto",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 12.sp,
                                  color: formTextAreaDefault,
                                ),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            "BTC",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 16.sp,
                                  color: blackColor,
                                ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Obx(
                        () {
                          return CircleAvatar(
                            backgroundColor: controller.sendCurrency.value == 0 ? priColor : formTextAreaDefault,
                            radius: 10.sp,
                            child: Icon(
                              Icons.check_rounded,
                              color: whiteColor,
                              size: 13.sp,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Divider(
                  color: formTextAreaDefault,
                  thickness: 1.h,
                ),
                SizedBox(height: 10.h),
                BouncingWidget(
                  onPressed: () {
                    controller.sendCurrency.value = 1;
                  },
                  scaleFactor: 0.2,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 17.sp,
                        child: FaIcon(
                          FontAwesomeIcons.ethereum,
                          size: 20.sp,
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Crypto",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 12.sp,
                                  color: formTextAreaDefault,
                                ),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            "ETH",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 16.sp,
                                  color: blackColor,
                                ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Obx(
                        () {
                          return CircleAvatar(
                            backgroundColor: controller.sendCurrency.value == 1 ? priColor : formTextAreaDefault,
                            radius: 10.sp,
                            child: Icon(
                              Icons.check_rounded,
                              color: whiteColor,
                              size: 13.sp,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Divider(
                  color: formTextAreaDefault,
                  thickness: 1.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          GestureDetector(
            onTap: () {
              Get.back();
              Get.to(() => const AvailableAmount());
            },
            child: Container(
              height: 50.h,
              width: 335.w,
              decoration: BoxDecoration(
                color: priColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              alignment: Alignment.center,
              child: Text(
                "Proceed",
                style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static modeOfDeposit({required BuildContext context, required HomeController controller}) {
    bottomSheet(
      height: 280.h,
      dismissable: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Mode of Deposit",
            style: Theme.of(context).textTheme.button!.copyWith(
                  color: blackColor,
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 10.h),
          Divider(
            color: formTextAreaDefault,
            thickness: 1.h,
          ),
          SizedBox(height: 10.h),
          BouncingWidget(
            onPressed: () {
              controller.modeOfDeposit.value = 0;
              Timer(
                const Duration(milliseconds: 200),
                () {
                  Get.back();
                  TransactionBottomSheet.cryptoDeposit(context: context, controller: controller);
                },
              );
            },
            scaleFactor: 0.2,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 17.sp,
                  child: FaIcon(
                    FontAwesomeIcons.bitcoinSign,
                    size: 20.sp,
                    color: whiteColor,
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Crypto",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16.sp,
                            color: blackColor,
                          ),
                    ),
                  ],
                ),
                const Spacer(),
                Obx(
                  () {
                    return CircleAvatar(
                      backgroundColor: controller.modeOfDeposit.value == 0 ? priColor : formTextAreaDefault,
                      radius: 10.sp,
                      child: Icon(
                        Icons.check_rounded,
                        color: whiteColor,
                        size: 13.sp,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Divider(
            color: formTextAreaDefault,
            thickness: 1.h,
          ),
          SizedBox(height: 10.h),
          BouncingWidget(
            onPressed: () {
              controller.modeOfDeposit.value = 1;
              Timer(
                const Duration(milliseconds: 200),
                () {
                  Get.back();
                  Get.to(() => const SelectCashMode());
                },
              );
            },
            scaleFactor: 0.2,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 17.sp,
                  child: FaIcon(
                    FontAwesomeIcons.dollarSign,
                    size: 20.sp,
                    color: whiteColor,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  "Cash",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 16.sp,
                        color: blackColor,
                      ),
                ),
                const Spacer(),
                Obx(
                  () {
                    return CircleAvatar(
                      backgroundColor: controller.modeOfDeposit.value == 1 ? priColor : formTextAreaDefault,
                      radius: 10.sp,
                      child: Icon(
                        Icons.check_rounded,
                        color: whiteColor,
                        size: 13.sp,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Divider(
            color: formTextAreaDefault,
            thickness: 1.h,
          ),
        ],
      ),
    );
  }

  static cryptoDeposit({required BuildContext context, required HomeController controller}) {
    bottomSheet(
      height: 280.h,
      dismissable: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cryptocurrency",
            style: Theme.of(context).textTheme.button!.copyWith(
                  color: blackColor,
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 10.h),
          Divider(
            color: formTextAreaDefault,
            thickness: 1.h,
          ),
          SizedBox(height: 10.h),
          BouncingWidget(
            onPressed: () {
              controller.depositCrypto.value = 0;
            },
            scaleFactor: 0.2,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 17.sp,
                  child: FaIcon(
                    FontAwesomeIcons.bitcoinSign,
                    size: 20.sp,
                    color: whiteColor,
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Crypto",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12.sp,
                            color: formTextAreaDefault,
                          ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      "Bitcoin",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16.sp,
                            color: blackColor,
                          ),
                    ),
                  ],
                ),
                const Spacer(),
                Obx(
                  () {
                    return CircleAvatar(
                      backgroundColor: controller.depositCrypto.value == 0 ? priColor : formTextAreaDefault,
                      radius: 10.sp,
                      child: Icon(
                        Icons.check_rounded,
                        color: whiteColor,
                        size: 13.sp,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Divider(
            color: formTextAreaDefault,
            thickness: 1.h,
          ),
          SizedBox(height: 10.h),
          BouncingWidget(
            onPressed: () {
              controller.depositCrypto.value = 1;
            },
            scaleFactor: 0.2,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 17.sp,
                  child: FaIcon(
                    FontAwesomeIcons.ethereum,
                    size: 20.sp,
                    color: whiteColor,
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Crypto",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12.sp,
                            color: formTextAreaDefault,
                          ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      "Ethereum",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16.sp,
                            color: blackColor,
                          ),
                    ),
                  ],
                ),
                const Spacer(),
                Obx(
                  () {
                    return CircleAvatar(
                      backgroundColor: controller.depositCrypto.value == 1 ? priColor : formTextAreaDefault,
                      radius: 10.sp,
                      child: Icon(
                        Icons.check_rounded,
                        color: whiteColor,
                        size: 13.sp,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Divider(
            color: formTextAreaDefault,
            thickness: 1.h,
          ),
        ],
      ),
    );
  }
}
