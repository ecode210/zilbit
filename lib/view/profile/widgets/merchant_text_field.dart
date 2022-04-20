import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zilbit/constants.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({Key? key, required this.textInputType, required this.hint}) : super(key: key);
  final TextInputType textInputType;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: priColor,
      keyboardType: textInputType,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: priColor,
            width: 2.h,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: formTextAreaDefault,
            width: 2.h,
          ),
        ),
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
