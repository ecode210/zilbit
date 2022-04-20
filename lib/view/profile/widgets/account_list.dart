import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zilbit/constants.dart';

class AccountList extends StatelessWidget {
  const AccountList({Key? key, required this.title, required this.subtitle}) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp),
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
              ),
            ],
          ),
        ),
        SizedBox(width: 40.w),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: formHeaders,
          size: 15.sp,
        ),
      ],
    );
  }
}
