import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/marketplace/marketplace_controller.dart';
import 'package:zilbit/view/marketplace/widgets/marketplace_offer.dart';

class Marketplace extends GetWidget<MarketplaceController> {
  const Marketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 812.h,
      color: whiteColor,
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
                  height: 190.h,
                  width: 375.w,
                  color: priColor,
                  alignment: Alignment.centerRight,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 240.h,
                    width: 375.w,
                    color: priColor,
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset(
                      "assets/svg/marketplace appbar pattern.svg",
                      height: 240.h,
                      width: 375.w,
                      fit: BoxFit.fitHeight,
                      color: whiteColor.withOpacity(0.1),
                    ),
                  ),
                ),
                Container(
                  height: 190.h,
                  width: 375.w,
                  padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 0),
                  child: Column(
                    children: [
                      SizedBox(height: 30.h),
                      Row(
                        children: [
                          Container(
                            height: 30.h,
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(50.r),
                            ),
                            alignment: Alignment.center,
                            child: Obx(
                              () {
                                return DropdownButton(
                                  value: controller.selectedMarketplace.value,
                                  borderRadius: BorderRadius.circular(10.r),
                                  dropdownColor: priColor,
                                  elevation: 0,
                                  underline: const Divider(
                                    color: Colors.transparent,
                                    thickness: 0,
                                  ),
                                  icon: Icon(
                                    Icons.arrow_drop_down_rounded,
                                    color: whiteColor,
                                    size: 20.sp,
                                  ),
                                  onChanged: (value) {
                                    controller.selectedMarketplace.value = value.toString();
                                  },
                                  items: controller.marketplace.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 20.sp),
                                      ),
                                    );
                                  }).toList(),
                                );
                              },
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 30.h,
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(50.r),
                            ),
                            alignment: Alignment.center,
                            child: Obx(
                              () {
                                return DropdownButton(
                                  value: controller.selectedMarket.value,
                                  borderRadius: BorderRadius.circular(10.r),
                                  dropdownColor: whiteColor,
                                  elevation: 0,
                                  underline: const Divider(
                                    color: Colors.transparent,
                                    thickness: 0,
                                  ),
                                  icon: Icon(
                                    Icons.arrow_drop_down_rounded,
                                    color: priColor,
                                    size: 20.sp,
                                  ),
                                  onChanged: (value) {
                                    controller.selectedMarket.value = value.toString();
                                  },
                                  items: controller.market.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: Theme.of(context).textTheme.button!.copyWith(fontSize: 12.sp),
                                      ),
                                    );
                                  }).toList(),
                                );
                              },
                            ),
                          ),
                          SizedBox(width: 10.w),
                          SizedBox(
                            height: 30.h,
                            child: const FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Icon(
                                Icons.more_vert_rounded,
                                color: whiteColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Obx(
                            () {
                              return Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: secColor,
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: DropdownButton(
                                  value: controller.selectedTransactionType.value,
                                  borderRadius: BorderRadius.circular(10.r),
                                  dropdownColor: secColor,
                                  elevation: 0,
                                  underline: const Divider(
                                    color: Colors.transparent,
                                    thickness: 0,
                                  ),
                                  icon: Icon(
                                    Icons.arrow_drop_down_rounded,
                                    color: whiteColor,
                                    size: 20.sp,
                                  ),
                                  onChanged: (value) {
                                    controller.selectedTransactionType.value = value.toString();
                                  },
                                  items: controller.transactionType.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                              fontSize: 16.sp,
                                              color: whiteColor,
                                            ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              );
                            },
                          ),
                          SizedBox(width: 10.w),
                          Obx(
                            () {
                              return Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: secColor,
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: DropdownButton(
                                  value: controller.selectedCurrencyType.value,
                                  borderRadius: BorderRadius.circular(10.r),
                                  dropdownColor: secColor,
                                  elevation: 0,
                                  underline: const Divider(
                                    color: Colors.transparent,
                                    thickness: 0,
                                  ),
                                  icon: Icon(
                                    Icons.arrow_drop_down_rounded,
                                    color: whiteColor,
                                    size: 20.sp,
                                  ),
                                  onChanged: (value) {
                                    controller.selectedCurrencyType.value = value.toString();
                                  },
                                  items: controller.currencyType.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                              fontSize: 16.sp,
                                              color: whiteColor,
                                            ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              );
                            },
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 25.h,
                            child: const FittedBox(
                              fit: BoxFit.fitHeight,
                              child: FaIcon(
                                FontAwesomeIcons.solidClipboard,
                                color: whiteColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.h),
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
                children: [
                  Text(
                    "Offers List",
                    style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                  ),
                  const Spacer(),
                  Text(
                    "Filter",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
                  ),
                  SizedBox(width: 5.w),
                  FaIcon(
                    FontAwesomeIcons.filter,
                    size: 15.sp,
                    color: formHeaders,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Expanded(
              child: SizedBox(
                width: 375.w,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 20.h),
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: formTextAreaDefault,
                      thickness: 1,
                    );
                  },
                  itemBuilder: (context, index) {
                    return const MarketplaceOffer();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
