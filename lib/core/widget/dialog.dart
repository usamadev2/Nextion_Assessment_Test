import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nextion_assessmenttest/core/constants/app_colors.dart';
import '../constants/strings/app_strings.dart';
import '../extensions/space_xy.dart';
import 'custom_text.dart';

class AppDialog {
  static checkInternetDialog(BuildContext context) {
    return showDialog(
      context: context,
      // barrierColor: Colors.greenAccent,
      builder: (context) => Dialog(
        alignment: Alignment.bottomCenter,
        shape: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.white),
          borderRadius: BorderRadius.circular(24.0.r),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 200.0.h,
            width: double.infinity,
            padding: EdgeInsets.all(12.0.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0.r),
              border: Border.all(color: AppColors.cBlack72, width: 3.0.w),
              color: AppColors.white,
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CustomText(
                text: AppStrings.appName,
                fontSize: 18.0.sp,
                fontWeight: FontWeight.w600,
              ),
              16.0.spaceY,
              CircleAvatar(
                  radius: 44.0.h,
                  backgroundColor: AppColors.cPurple,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        size: 64.0.h,
                        color: AppColors.white,
                      )))
            ]),
          ),
        ),
      ),
    );
  }
}
