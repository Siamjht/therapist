
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:therapist/utils/app_colors.dart';
import 'package:therapist/utils/app_texts.dart';
import 'package:therapist/views/widgets/bottom_nav_bar.dart';
import 'package:therapist/views/widgets/custom_text.dart';
import 'package:badges/badges.dart' as badges;


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 44.h,
            width: size.width.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: SizedBox(
              height: 64.h,
              width: size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    radius: 20.h,
                    child: CustomText(text: AppTexts.appbarTextHome, color: AppColors.whiteColor,
                      fontSize: 12, fontFamily: "Open Sans", fontWeight: FontWeight.w600,),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: AppColors.secondaryColor,
                    radius: 20.h,
                    child: badges.Badge(
                      badgeContent: CustomText(text: AppTexts.badgeNumberText, color: AppColors.whiteColor,
                        fontSize: 10, fontFamily: "Open Sans", fontWeight: FontWeight.w400,),
                      child: SvgPicture.asset("assets/icons/notifyBell.svg",),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 24.h,),
          Container(
            height: 108.h,
            width: size.width.w,
            color: AppColors.secondaryColor,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Row(
                children: [
                  SizedBox(
                      height: 60.h,
                      width: 72.w,
                      child: SvgPicture.asset("assets/images/homeImage.svg", fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 16.h,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text: AppTexts.drName, color: AppColors.primaryColor,
                          fontSize: 24, fontFamily: "Open Sans", fontWeight: FontWeight.w500),
                      CustomText(text: AppTexts.welcomeMindGaze, color: AppColors.blackColor,
                          fontSize: 14, fontFamily: "Open Sans", fontWeight: FontWeight.w400),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              children: [
                buildContainer(AppTexts.totalSessionNumber, AppTexts.totalSessions),
                SizedBox(width: 16.w,),
                buildContainer(AppTexts.completedSessionsNumber, AppTexts.completedSessions),
              ],
            ),
          ),
          SizedBox(height: 24.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: CustomText(text: AppTexts.appointments, color: AppColors.blackColor,
                fontSize: 18, fontFamily: "Open Sans", fontWeight: FontWeight.w600),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }

  Container buildContainer(String text1, String text2) => Container(
    height: 99.h,
    width: 168.w,
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor),
        borderRadius: const BorderRadius.all(Radius.circular(8))
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(text: text1, color: AppColors.primaryColor,
            fontSize: 32, fontFamily: "Open Sans", fontWeight: FontWeight.w500),
        SizedBox(height: 4.h,),
        CustomText(text: text2, color: AppColors.blackColor,
            fontSize: 14, fontFamily: "Open Sans", fontWeight: FontWeight.w500),
      ],
    ),
  );
}



