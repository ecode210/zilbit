import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zilbit/constants.dart';
import 'package:zilbit/controller/home/home_controller.dart';
import 'package:zilbit/view/home/widgets/send_bottomsheet.dart';

class SearchUsers extends StatefulWidget {
  const SearchUsers({Key? key}) : super(key: key);

  @override
  State<SearchUsers> createState() => _SearchUsersState();
}

class _SearchUsersState extends State<SearchUsers> {
  final controller = Get.find<HomeController>();

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
                        "Search Users",
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
                      physics: const BouncingScrollPhysics(),
                      itemCount: controller.contacts!.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            controller.sendContact.value = controller.contacts![index].displayName;
                            Get.back();
                            TransactionBottomSheet.send(context: context, controller: controller);
                          },
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
                                  style: Theme.of(context).textTheme.headline4,
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
                      Get.back();
                    },
                    child: Container(
                      height: 50.h,
                      width: 335.w,
                      decoration: BoxDecoration(
                        color: priColor,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Add new account",
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
