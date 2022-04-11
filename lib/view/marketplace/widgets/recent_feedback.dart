import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zilbit/constants.dart';

class RecentFeedback extends StatelessWidget {
  const RecentFeedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 295.w,
      height: 60.h,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.amber.withOpacity(0.3),
                radius: 10.sp,
              ),
              SizedBox(width: 10.w),
              Text(
                "Kunle",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: blackColor,
                      fontSize: 16.sp,
                    ),
              ),
              const Spacer(),
              Text(
                "🇳🇬",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: blackColor,
                      fontSize: 16.sp,
                    ),
              ),
              SizedBox(width: 10.w),
              RatingBarIndicator(
                rating: 3,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 4,
                itemSize: 12.sp,
                unratedColor: formTextAreaDefault,
                direction: Axis.horizontal,
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Expanded(
            child: SizedBox(
              width: 295.w,
              child: Text(
                "He was so fast with the release. He was so calm during the conversation. He was so fast with the release.",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 10.sp, color: blackColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
