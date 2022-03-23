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
              headline2: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: blackColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              headline3: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: backgroundColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              headline4: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: blackColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              caption: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: backgroundColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              bodyText1: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: formHeaders,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              button: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: priColor,
                  fontSize: 18.sp,
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
