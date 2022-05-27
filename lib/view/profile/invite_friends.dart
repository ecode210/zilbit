import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/profile/profile_controller.dart';

class InviteFriends extends StatefulWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  State<InviteFriends> createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  final controller = Get.find<ProfileController>();

  @override
  void initState() {
    super.initState();
    _fetchContacts();
  }

  Future _fetchContacts() async {
    if (!await FlutterContacts.requestPermission()) {
      controller.contactPermission.value = false;
    } else {
      final contacts = await FlutterContacts.getContacts();
      controller.contacts = contacts;
      controller.contactPermission.value = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: 375.w,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Obx(() {
            return Column(
              children: [
                SizedBox(height: 20.h),
                SizedBox(
                  height: 24.h,
                  width: 375.w,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 25.sp,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Invite Friends",
                        style: Theme.of(context).textTheme.headline3!.copyWith(color: blackColor),
                      ),
                      const Spacer(),
                      SizedBox(width: 25.w),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                if (!controller.contactPermission.value)
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: BouncingWidget(
                        onPressed: () {
                          _fetchContacts();
                        },
                        scaleFactor: 0.5,
                        child: Text(
                          "Permission Denied!",
                          style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 20.sp),
                        ),
                      ),
                    ),
                  ),
                if (controller.contactPermission.value)
                  TextField(
                    cursorColor: priColor,
                    keyboardType: TextInputType.name,
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
                      hintText: "Search contact",
                      hintStyle: Theme.of(context).textTheme.subtitle1,
                      suffixIcon: Container(
                        width: 10.w,
                        padding: EdgeInsets.only(right: 5.w),
                        alignment: Alignment.centerRight,
                        child: FaIcon(
                          FontAwesomeIcons.magnifyingGlass,
                          color: formTextAreaDefault,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ),
                if (controller.contactPermission.value) SizedBox(height: 30.h),
                if (controller.contactPermission.value)
                  Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        height: 1.h,
                        width: 335.w,
                      ),
                      Positioned(
                        left: -20.w,
                        child: SizedBox(
                          height: 1.h,
                          width: 375.w,
                          child: Divider(
                            color: formTextAreaDefault,
                            thickness: 1.h,
                          ),
                        ),
                      )
                    ],
                  ),
                if (controller.contactPermission.value) SizedBox(height: 20.h),
                if (controller.contactPermission.value)
                  Expanded(
                    child: ListView.separated(
                      itemCount: controller.contacts!.length,
                      itemBuilder: (context, index) {
                        return BouncingWidget(
                          onPressed: () {
                            controller.radioValue.value = index;
                          },
                          scaleFactor: 0.5,
                          child: SizedBox(
                            height: 64.h,
                            child: Row(
                              children: [
                                Container(
                                  height: 44.h,
                                  width: 44.h,
                                  margin: EdgeInsets.symmetric(vertical: 10.h),
                                  decoration: BoxDecoration(
                                    color: Colors.amber.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                ),
                                SizedBox(width: 15.w),
                                Text(
                                  controller.contacts![index].displayName,
                                  style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),
                                ),
                                const Spacer(),
                                Obx(
                                  () {
                                    return Radio<int>(
                                      activeColor: priColor,
                                      value: index,
                                      groupValue: controller.radioValue.value,
                                      onChanged: (value) {
                                        controller.radioValue.value = index;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: formTextAreaDefault,
                          thickness: 1.h,
                        );
                      },
                    ),
                  ),
                if (controller.contactPermission.value) SizedBox(height: 20.h),
                if (controller.contactPermission.value)
                  GestureDetector(
                    onTap: () {
                      controller.hasInvites.value = true;
                      Get.back();
                    },
                    child: Container(
                      height: 50.h,
                      width: 295.w,
                      decoration: BoxDecoration(
                        color: priColor,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Invite Friend",
                        style: Theme.of(context).textTheme.button!.copyWith(color: whiteColor),
                      ),
                    ),
                  ),
                SizedBox(height: 20.h),
              ],
            );
          }),
        ),
      ),
    );
  }
}
