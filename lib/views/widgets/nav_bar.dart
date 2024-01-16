import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:therapist/utils/app_colors.dart';

class NavBar extends StatefulWidget {
  final int currentIndex;

  const NavBar({required this.currentIndex, super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var bottomNavIndex = 0;

  List<String> selectedIcon = [
    AppIcons.homeIconSolid,
    AppIcons.appointmentIconSolid,
    AppIcons.messageIconSolid,
    AppIcons.profileIconSolid
  ];

  List<String> selectedText = [];

  List<String> unselectedIcon = [
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
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          unselectedIcon.length,
              (index) => InkWell(
            onTap: () => onTap(index),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                index != bottomNavIndex
                    ? SvgPicture.asset(selectedIcon[index],
                    color: AppColors.blue_500, height: 24.h, width: 24.w)
                    : SvgPicture.asset(unselectedIcon[index],
                    color: AppColors.blue_500, height: 24.h, width: 24.w),
                const SizedBox(
                  height: 4,
                ),
                CustomText(
                  color: AppColors.blackColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  text: selectedText[index],
                ),
                index == bottomNavIndex
                    ? Container(
                  width: 8.w,
                  height: 8.h,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                  ),
                )
                    : const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTap(int index) {
    // HomeController homeController = Get.find<HomeController>();
    // homeController.scrollController.dispose();
    if (index == 0) {
      if (!(widget.currentIndex == 0)) {
        Get.offAll(() => const HomeScreen(),
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

class AppIcons{

  static String homeIconSolid = "assets/icons/homeIconSolid.svg";
  static String homeIconOutline = "assets/icons/homeIconOutline.svg";
  static String appointmentIconSolid = "assets/icons/appointmentIconSolid.svg";
  static String appointmentIconOutline = "assets/icons/appointmentIconOutline.svg";
  static String messageIconSolid = "assets/icons/messageIconSolid.svg";
  static String messageIconOutline = "assets/icons/messageIconOutline.svg";
  static String profileIconOutline= "assets/icons/profileIconOutline.svg";
  static String profileIconSolid= "assets/icons/profileIconSolid.svg";
  static String notifyBell = "assets/icons/notifyBell.svg";
}