import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/wallet/widgets/recent_activity_list.dart';

class WalletRecentActivity extends StatelessWidget {
  const WalletRecentActivity({Key? key, required this.isEmpty}) : super(key: key);
  final bool isEmpty;

  @override
  Widget build(BuildContext context) {
    if (isEmpty) {
      return Container(
        height: 180.h,
        width: 335.w,
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        padding: EdgeInsets.all(15.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.w),
          border: Border.all(
            color: formTextAreaDefault,
            width: 1.h,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "You have no transactions",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: blackColor,
                    fontSize: 20.sp,
                  ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Buy Bitcoin now and your transactions\nwill be shown here.",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: blackColor,
                    fontSize: 16.sp,
                  ),
            ),
            const Spacer(),
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: priColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              alignment: Alignment.center,
              child: Text(
                "Buy BTC",
                style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (context, index) => const RecentActivityList(),
          separatorBuilder: (context, index) => Column(
            children: [
              SizedBox(height: 10.h),
              Divider(
                color: formTextAreaDefault,
                thickness: 1.h,
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      );
    }
  }
}
