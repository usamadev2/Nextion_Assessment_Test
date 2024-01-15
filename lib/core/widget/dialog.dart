import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nextion_assessmenttest/core/constants/app_colors.dart';
import 'custom_text.dart';

class AppDialog {
  static void checkInternetDialog(BuildContext context, String title, String content) {
    AlertDialog alertDialog = AlertDialog(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
      title: CustomText(
        text: title,
        color: AppColors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      content: CustomText(
        text: content,
        color: AppColors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Ok"),
        ),
      ],
    );

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return alertDialog;
        });
  }
}
