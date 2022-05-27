import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/marketplace/marketplace_controller.dart';
import 'package:zilbit/view/marketplace/vendor_profile.dart';

class MarketplaceOffer extends GetWidget<MarketplaceController> {
  const MarketplaceOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        SizedBox(height: 10.h),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.amber.withOpacity(0.3),
              radius: 10.w,
            ),
            SizedBox(width: 3.w),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 4.w,
            ),
            SizedBox(width: 3.w),
            Text(
              "Makinz",
              style: Theme.of(context).textTheme.caption!.copyWith(
                    color: blackColor,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(width: 3.w),
            SvgPicture.asset(
              "assets/svg/verified.svg",
              height: 13.h,
              width: 13.w,
              fit: BoxFit.contain,
            ),
            const Spacer(),
            Text(
              "Trade(s) 69 | 100%",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(color: formHeaders),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        RatingBarIndicator(
          rating: 3,
          itemBuilder: (context, index) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          itemCount: 4,
          itemSize: 10,
          unratedColor: formTextAreaDefault,
          direction: Axis.horizontal,
        ),
        SizedBox(height: 5.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: priColor.withOpacity(0.15),
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rate",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(color: priColor),
                ),
                Text(
                  "₦583.00",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 18.sp,
                        color: secColor,
                      ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 12.sp,
                  color: blackColor,
                ),
            children: [
              const TextSpan(text: "Limit: "),
              TextSpan(
                text: "₦1,000 - ₦200,000,000",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 12.sp,
                      color: blackColor,
                    ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Bank Transfer | All Banks",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 12.sp,
                    color: blackColor,
                  ),
            ),
            Obx(
              () {
                return GestureDetector(
                  onTap: () {
                    Get.to(() => const VendorProfile());
                  },
                  child: Container(
                    height: 25.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: priColor,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      controller.selectedTransactionType.value,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(color: whiteColor),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
