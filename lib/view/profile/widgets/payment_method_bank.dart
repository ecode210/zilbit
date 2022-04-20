import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/profile/edit_bank.dart';

class PaymentMethodBank extends StatelessWidget {
  const PaymentMethodBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: priColor,
            radius: 20.sp,
            child: SvgPicture.asset(
              "assets/svg/marketplace.svg",
              height: 24.h,
              width: 24.h,
              color: whiteColor,
            ),
          ),
          SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "First Bank of Nigeria",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: blackColor,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(height: 5.h),
              Text(
                "3132957309",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: blackColor),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Get.to(() => const EditBank());
            },
            child: CircleAvatar(
              backgroundColor: formTextAreaDefault,
              radius: 12.sp,
              child: Icon(
                Icons.edit_rounded,
                color: Colors.white,
                size: 15.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
