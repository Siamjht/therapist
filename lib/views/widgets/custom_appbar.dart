
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:therapist/utils/app_colors.dart';
import 'package:therapist/utils/app_texts.dart';
import 'package:therapist/views/widgets/custom_text.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      child: AppBar(
        leading: CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          radius: 20.h,
          child: CustomText(text: AppTexts.appbarTextHome, color: AppColors.whiteColor,
            fontSize: 12, fontFamily: "Open Sans", fontWeight: FontWeight.w600,),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: AppColors.secondaryColor,
            radius: 20.h,
            child: badges.Badge(
              badgeContent: CustomText(text: AppTexts.badgeText, color: AppColors.whiteColor,
                fontSize: 10, fontFamily: "Open Sans", fontWeight: FontWeight.w400,),
              child: SvgPicture.asset("assets/icons/notifyBell.svg"),
            ),
          ),
        ],
      ),
    );
  }
}