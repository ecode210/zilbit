import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zilbit/constants.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BouncingWidget(
          onPressed: (){},
          scaleFactor: 0.5,
          child: Container(
            height: 58.h,
            width: 58.w,
            decoration: BoxDecoration(
              color: secColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/svg/${title.toLowerCase()}.svg",
              height: 25.h,
              width: 25.w,
              color: whiteColor,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(color: whiteColor),
        )
      ],
    );
  }
}
