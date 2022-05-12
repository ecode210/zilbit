import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zilbit/constants.dart';

class RecentActivityList extends StatelessWidget {
  const RecentActivityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      child: Row(
        children: [
          Container(
            height: 44.h,
            width: 44.h,
            decoration: BoxDecoration(
              color: Colors.amber.withOpacity(0.3),
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Aaron",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: blackColor,
                      fontSize: 16.sp,
                    ),
              ),
              SizedBox(height: 5.h),
              Text(
                "12 Mar 2022",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const Spacer(),
          Text(
            "+ 0.10212",
            style: Theme.of(context).textTheme.button!.copyWith(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
