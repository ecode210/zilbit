import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zilbit/constants.dart';

class NumericButton extends StatelessWidget {
  const NumericButton({Key? key, required this.pinController, required this.number}) : super(key: key);
  final TextEditingController pinController;
  final String number;

  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      onPressed: (){
        if(pinController.text.length < 6 && number != "<"){
          pinController.text = pinController.text + number;
        } else if(pinController.text.isNotEmpty && number == "<"){
          pinController.text = pinController.text.substring(0, pinController.text.length - 1);
        }
      },
      scaleFactor: 1,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.transparent,
        child: number == "<" ? Icon(
          Icons.arrow_back_rounded,
          size: 30.sp,
          color: blackColor,
        ) : Text(
          number,
          style: Theme.of(context).textTheme.overline,
        ),
      ),
    );
  }
}
