import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:zilbit/constants.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({Key? key, required this.textInputType, required this.hintText}) : super(key: key);
  final TextInputType textInputType;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      cursorColor: priColor,
      keyboardType: textInputType,
      textAlignVertical: TextAlignVertical.center,
      countries: const ["NG", "GH", "EG", "ZA", "DZ", "MA", "KE", "ET"],
      style: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
      disableLengthCheck: true,
      dropdownDecoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      dropdownIconPosition: IconPosition.trailing,
      dropdownTextStyle: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
      initialCountryCode: "NG",
      pickerDialogStyle: PickerDialogStyle(
        countryCodeStyle: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
        countryNameStyle: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
        searchFieldCursorColor: priColor,
        searchFieldInputDecoration: InputDecoration(
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
          hintText: "Search",
          hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(color: formHeaders),
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 15.h),
            child: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: priColor,
              size: 20.sp,
            ),
          ),
        ),
      ),
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
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
