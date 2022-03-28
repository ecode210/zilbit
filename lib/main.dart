import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () {
        return GetMaterialApp(
          theme: ThemeData(
            textTheme: TextTheme(
              headline1: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: whiteColor,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              headline2: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: blackColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              headline3: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: whiteColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              headline4: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: blackColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              overline: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: blackColor,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle1: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: formTextAreaDefault,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle2: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: formTextAreaDefault,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              caption: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: whiteColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              bodyText1: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: formHeaders,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              bodyText2: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: whiteColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              button: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: priColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          title: "Zilbit",
          defaultTransition: Transition.cupertino,
          debugShowCheckedModeBanner: false,
          home: const Onboarding(),
        );
      },
    );
  }
}
