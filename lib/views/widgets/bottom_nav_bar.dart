import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:therapist/utils/app_colors.dart';
import 'package:therapist/utils/app_texts.dart';
import 'package:therapist/views/home/home_page.dart';

import '../../utils/app_icons.dart';
import 'custom_text.dart';

class BottomNavBar extends StatefulWidget {
  final int currentIndex;

  const BottomNavBar({required this.currentIndex, super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var bottomNavIndex = 0;

  List<String> selectedIcon = [
    AppIcons.homeIconSolid,
    AppIcons.appointmentIconSolid,
    AppIcons.messageIconSolid,
    AppIcons.profileIconSolid
  ];

  List<String> selectedText = [AppTexts.home, AppTexts.appointment, AppTexts.message, AppTexts.profile];

  List<String> unSelectedIcon = [
    AppIcons.homeIconOutline,
    AppIcons.appointmentIconOutline,
    AppIcons.messageIconOutline,
    AppIcons.profileIconOutline
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: MediaQuery.of(context).size.width,
      padding:
      const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 20),
      alignment: Alignment.center,
      color: AppColors.primaryColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          unSelectedIcon.length,
              (index) => InkWell(
            onTap: () => onTap(index),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30.w,
                  height: 30.w,
                  child: index != bottomNavIndex
                      ? SvgPicture.asset(unSelectedIcon[index], fit: BoxFit.fill,)
                      : SvgPicture.asset(selectedIcon[index], fit: BoxFit.fill,),
                ),
                const SizedBox(
                  height: 4,
                ),
                CustomText(
                  color: AppColors.whiteColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  text: selectedText[index],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTap(int index) {
    if (index == 0) {
      if (!(widget.currentIndex == 0)) {
        Get.offAll(() => const HomePage(),
            transition: Transition.noTransition);
      }
    } else if (index == 1) {
      if (!(widget.currentIndex == 1)) {
        Get.offAll(() => const CategoryScreen(),
            transition: Transition.noTransition);
      }
    } else if (index == 2) {
      if (!(widget.currentIndex == 2)) {
        Get.offAll(() => const FriendsScreen(),
            transition: Transition.noTransition);
      }
    } else if (index == 3) {
      if (!(widget.currentIndex == 3)) {
        Get.offAll(() => const ProfileScreen(),
            transition: Transition.noTransition);
      }
    }
  }
}

class ProfileScreen {
  const ProfileScreen();
}

class FriendsScreen {
  const FriendsScreen();
}

class CategoryScreen {
  const CategoryScreen();
}
