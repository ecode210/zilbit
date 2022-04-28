import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zilbit/constants.dart';

class ReferralShare extends StatelessWidget {
  const ReferralShare({Key? key, required this.index}) : super(key: key);
  final int index;

  IconData icon() {
    switch (index) {
      case 0:
        return FontAwesomeIcons.message;
      case 1:
        return FontAwesomeIcons.telegram;
      case 2:
        return FontAwesomeIcons.twitter;
      case 3:
        return FontAwesomeIcons.whatsapp;
      case 4:
        return FontAwesomeIcons.envelope;
      case 5:
        return FontAwesomeIcons.shareNodes;
      default:
        return FontAwesomeIcons.message;
    }
  }

  String title() {
    switch (index) {
      case 0:
        return "Chat";
      case 1:
        return "Telegram";
      case 2:
        return "Twitter";
      case 3:
        return "WhatsApp";
      case 4:
        return "E-mail";
      case 5:
        return "More";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: formTextAreaDefault.withOpacity(0.15),
          radius: 35.sp,
          child: FaIcon(
            icon(),
            color: formHeaders,
            size: 30.sp,
          ),
        ),
        Text(
          title(),
          style: Theme.of(context).textTheme.caption!.copyWith(color: formHeaders),
        ),
      ],
    );
  }
}
