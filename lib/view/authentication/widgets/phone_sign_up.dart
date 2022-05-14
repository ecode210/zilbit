import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/view/authentication/widgets/auth_text_field.dart';
import 'package:zilbit/view/authentication/widgets/phone_text_field.dart';

class PhoneSignUp extends StatelessWidget {
  const PhoneSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 283.h,
      width: 375.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phone Number",
            style: Theme.of(context).textTheme.headline4!.copyWith(color: formHeaders),
          ),
          const PhoneTextField(
            textInputType: TextInputType.phone,
            hintText: "XXX-XXX-XXXX",
          ),
          const Spacer(),
          Text(
            "Password",
            style: Theme.of(context).textTheme.headline4!.copyWith(color: formHeaders),
          ),
          const AuthTextField(
            textInputType: TextInputType.text,
            hintText: "••••",
          ),
          const Spacer(),
          Text(
            "Referral",
            style: Theme.of(context).textTheme.headline4!.copyWith(color: formHeaders),
          ),
          const AuthTextField(
            textInputType: TextInputType.text,
            hintText: "Enter Referral ID",
          ),
        ],
      ),
    );
  }
}
