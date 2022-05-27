import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/profile/widgets/share_list.dart';

class Share {
  static void shareModal({required BuildContext context}) {
    bottomSheet(
      height: 320.h,
      dismissable: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Share with",
            style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 16.sp),
          ),
          SizedBox(height: 15.h),
          SizedBox(
            height: 110.h,
            width: 335.w,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return ShareList(index: index);
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 15.w);
              },
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Or share with link",
              style: Theme.of(context).textTheme.caption!.copyWith(
                    color: formHeaders,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          const Spacer(),
          Container(
            height: 55.h,
            width: 335.w,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
              color: formTextAreaDefault.withOpacity(0.15),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "https://zilbit/INVSTRZEE/I just found this cool app just found this cool app",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                  ),
                ),
                SizedBox(width: 5.w),
                FaIcon(
                  FontAwesomeIcons.solidCopy,
                  color: priColor,
                  size: 20.sp,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
