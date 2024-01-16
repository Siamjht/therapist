
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:therapist/utils/app_colors.dart';
import 'package:therapist/utils/app_texts.dart';
import 'package:therapist/views/widgets/custom_text.dart';

import '../widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
          child: const CustomAppbar()),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                buildContainer("26", "Total Sessions"),
                SizedBox(width: 16.w,),
                buildContainer("03", "Completed Sessions"),
              ],
            ),
            SizedBox(height: 24.h,),
            CustomText(text: AppTexts.appointments, color: AppColors.blackColor,
                fontSize: 18, fontFamily: "Open Sans", fontWeight: FontWeight.w600)
          ],
        ),
      ),
    );
  }

  Container buildContainer(String text1, String text2) => Container(
    height: 99.h,
    width: 168.w,
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(8))
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



