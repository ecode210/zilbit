import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zilbit/constants.dart';

class RecentTrades extends StatelessWidget {
  const RecentTrades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Container(
            height: 45.h,
            width: 45.h,
            decoration: BoxDecoration(
              color: Colors.amber.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Aaron",
                style: Theme.of(context).textTheme.button!.copyWith(color: blackColor),
              ),
              Text(
                "1 Apr 2022",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const Spacer(),
          Text(
            "+0.1234",
            style: Theme.of(context).textTheme.button!.copyWith(color: Colors.green),
          )
        ],
      ),
    );
  }
}
