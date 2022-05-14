import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/wallet/wallet_controller.dart';
import 'package:zilbit/view/profile/widgets/share.dart';
import 'package:zilbit/view/wallet/receive.dart';
import 'package:zilbit/view/wallet/widgets/trade_graph.dart';

class Trade extends GetWidget<WalletController> {
  const Trade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: 375.w,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: defaultTargetPlatform == TargetPlatform.iOS ? 20.h : 30.h),
              SizedBox(
                height: 24.h,
                width: 375.w,
                child: Row(
                  children: [
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
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ethereum price",
                        style: Theme.of(context).textTheme.button!.copyWith(
                              color: formHeaders,
                              fontSize: 14.sp,
                            ),
                      ),
                      Text(
                        "\$1.60",
                        style: Theme.of(context).textTheme.button!.copyWith(
                              color: blackColor,
                              fontSize: 30.sp,
                            ),
                      ),
                      Text(
                        "-\$0.23 (12.58%)",
                        style: Theme.of(context).textTheme.button!.copyWith(
                              color: Colors.green,
                              fontSize: 14.sp,
                            ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Receive());
                    },
                    child: CircleAvatar(
                      backgroundColor: priColor,
                      radius: 25.sp,
                      child: CircleAvatar(
                        backgroundColor: whiteColor,
                        radius: 23.sp,
                        child: FaIcon(
                          FontAwesomeIcons.qrcode,
                          color: priColor,
                          size: 25.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              const Expanded(child: TradeGraph()),
              Obx(
                () {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BouncingWidget(
                        onPressed: () {
                          controller.tradeTimelineValue.value = "1H";
                        },
                        scaleFactor: 0.5,
                        child: Text(
                          "1H",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: controller.tradeTimeline(title: "1H")),
                        ),
                      ),
                      BouncingWidget(
                        onPressed: () {
                          controller.tradeTimelineValue.value = "1D";
                        },
                        scaleFactor: 0.5,
                        child: Text(
                          "1D",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: controller.tradeTimeline(title: "1D")),
                        ),
                      ),
                      BouncingWidget(
                        onPressed: () {
                          controller.tradeTimelineValue.value = "1W";
                        },
                        scaleFactor: 0.5,
                        child: Text(
                          "1W",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: controller.tradeTimeline(title: "1W")),
                        ),
                      ),
                      BouncingWidget(
                        onPressed: () {
                          controller.tradeTimelineValue.value = "1M";
                        },
                        scaleFactor: 0.5,
                        child: Text(
                          "1M",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: controller.tradeTimeline(title: "1M")),
                        ),
                      ),
                      BouncingWidget(
                        onPressed: () {
                          controller.tradeTimelineValue.value = "1Y";
                        },
                        scaleFactor: 0.5,
                        child: Text(
                          "1Y",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: controller.tradeTimeline(title: "1Y")),
                        ),
                      ),
                      BouncingWidget(
                        onPressed: () {
                          controller.tradeTimelineValue.value = "All";
                        },
                        scaleFactor: 0.5,
                        child: Text(
                          "All",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: controller.tradeTimeline(title: "All")),
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: 75.h,
                  width: 335.w,
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: formTextAreaDefault,
                      width: 1.h,
                    ),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green.withOpacity(0.3),
                        radius: 15.sp,
                        child: FaIcon(
                          FontAwesomeIcons.ethereum,
                          color: Colors.green,
                          size: 20.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "ETH Wallet",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: blackColor,
                              fontSize: 16.sp,
                            ),
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$34,790.00",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: blackColor,
                                  fontSize: 16.sp,
                                ),
                          ),
                          Text(
                            "0.000451 ETH",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Share.shareModal(context: context);
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
                    "Share address",
                    style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
