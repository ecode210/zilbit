import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zilbit/constants.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({Key? key, required this.title, required this.subtitle, required this.date})
      : super(key: key);
  final String title;
  final String subtitle;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Text(
                title,
                style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
              ),
              Text(
                subtitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(color: blackColor),
              ),
              SizedBox(height: 5.h),
              Text(
                date,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ],
    );
  }
}
