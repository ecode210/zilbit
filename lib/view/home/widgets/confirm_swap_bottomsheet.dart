import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';

class ConfirmSwapBottomSheet extends GetWidget<HomeController> {
  const ConfirmSwapBottomSheet({Key? key, required this.pinController}) : super(key: key);
  final TextEditingController pinController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        Text(
          "Confirm Swap",
          style: Theme.of(context).textTheme.button!.copyWith(
                color: blackColor,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
              ),
        ),
        SizedBox(height: 20.h),
        Divider(
          color: formTextAreaDefault,
          thickness: 1.h,
        ),
        SizedBox(height: defaultTargetPlatform == TargetPlatform.iOS ? 15.h : 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "From",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "0.1111 ETH",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                      ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "≈ NGN300",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: blackColor),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: defaultTargetPlatform == TargetPlatform.iOS ? 15.h : 10.h),
        Divider(
          color: formTextAreaDefault,
          thickness: 1.h,
        ),
        SizedBox(height: defaultTargetPlatform == TargetPlatform.iOS ? 15.h : 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "To",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "1.2439 BTC",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                      ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "≈ NGN300",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: blackColor),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: defaultTargetPlatform == TargetPlatform.iOS ? 15.h : 10.h),
        Divider(
          color: formTextAreaDefault,
          thickness: 1.h,
        ),
        SizedBox(height: defaultTargetPlatform == TargetPlatform.iOS ? 15.h : 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction Fee",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "0.9091 BTC",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                      ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "≈ NGN300",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: blackColor),
                ),
              ],
            )
          ],
        ),
        const Spacer(),
        Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              Get.back();
              bottomSheet(
                dismissable: true,
                child: Center(
                  child: Text(
                    "Successful",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: priColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              );
              pinController.clear();
              controller.swap.value = false;
            },
            child: Container(
              height: 40.h,
              width: 295.w,
              decoration: BoxDecoration(
                color: priColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              alignment: Alignment.center,
              child: Text(
                "Confirm Swap",
                style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
              ),
            ),
          ),
        ),
        SizedBox(height: defaultTargetPlatform == TargetPlatform.iOS ? 20.h : 0),
      ],
    );
  }
}
