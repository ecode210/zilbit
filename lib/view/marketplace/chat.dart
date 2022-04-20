import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size(375.w, 105.h),
        child: Container(
          height: 105.h,
          width: 375.w,
          color: priColor,
          padding: EdgeInsets.fromLTRB(20.w, 60.h, 20.w, 20.w),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: whiteColor,
                  size: 25.sp,
                ),
              ),
              SizedBox(width: 20.w),
              CircleAvatar(
                backgroundColor: Colors.amber.withOpacity(0.3),
                radius: 13.sp,
              ),
              SizedBox(width: 5.w),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 3.sp,
              ),
              SizedBox(width: 5.w),
              Text(
                "Zilli Brain",
                style: Theme.of(context).textTheme.button!.copyWith(
                      fontSize: 12.sp,
                      color: whiteColor,
                    ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: 375.w,
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  width: 375.w,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    children: [
                      SizedBox(height: 20.h),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 20.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            color: priColor,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "1 September, 2022",
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 10.sp),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 70.h,
                        width: 335.w,
                        padding: EdgeInsets.all(10.h),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFEBC6),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.report_gmailerrorred_rounded,
                              color: const Color(0xFFFFAA0D),
                              size: 35.sp,
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Text(
                                "NOTE! Zilbit monitors the chat group and would only interfere when requested upon.",
                                style: Theme.of(context).textTheme.button!.copyWith(
                                      fontSize: 12.sp,
                                      color: const Color(0xFFFFAA0D),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Stack(
                        children: [
                          Container(
                            height: 140.h,
                            width: 335.w,
                            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                            decoration: BoxDecoration(
                              color: priColor,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 9.sp, height: 1.3),
                                    children: [
                                      const TextSpan(text: "Pay To:\n"),
                                      TextSpan(
                                        text: "Acholo Aaron\n\n",
                                        style:
                                            Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.w600),
                                      ),
                                      const TextSpan(text: "Account Number:\n"),
                                      TextSpan(
                                        text: "3132957309\n\n",
                                        style:
                                            Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.w600),
                                      ),
                                      const TextSpan(text: "Bank Name:\n"),
                                      TextSpan(
                                        text: "First Bank of Nigeria\n",
                                        style:
                                            Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 50.w),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 9.sp, height: 1.3),
                                    children: [
                                      const TextSpan(text: "Send:\n"),
                                      TextSpan(
                                        text: "NGN 50,000\n\n",
                                        style:
                                            Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.w600),
                                      ),
                                      const TextSpan(text: "You will receive:\n"),
                                      TextSpan(
                                        text: "0.2349\n\n",
                                        style:
                                            Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 115.w,
                            bottom: 22.h,
                            child: CircleAvatar(
                              radius: 40.r,
                              backgroundColor: Colors.white.withOpacity(0.14),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40.h,
                    width: 285.w,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.attach_file_rounded,
                          color: formHeaders,
                          size: 20.sp,
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: TextField(
                            cursorColor: priColor,
                            cursorHeight: 15.h,
                            style: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
                            decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: "Message",
                              hintStyle: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  BouncingWidget(
                    onPressed: () {},
                    scaleFactor: 0.5,
                    child: Container(
                      height: 40.h,
                      width: 40.h,
                      decoration: BoxDecoration(
                        color: priColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      alignment: Alignment.center,
                      child: FaIcon(
                        FontAwesomeIcons.solidPaperPlane,
                        color: whiteColor,
                        size: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
