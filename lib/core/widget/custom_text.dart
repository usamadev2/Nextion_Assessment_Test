import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nextion_assessmenttest/core/constants/app_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    this.fontSize,
    this.maxLine,
    this.textAlign,
    this.fontWeight,
    this.onTap,
    this.color,
  }) : super(key: key);

  final String text;
  final int? maxLine;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        maxLines: maxLine,
        textAlign: textAlign,
        style: GoogleFonts.blackOpsOne(
          color: color ?? AppColors.white,
          fontWeight: fontWeight ?? FontWeight.w600,
          fontSize: fontSize ?? 13.0.sp,
        ),
      ),
    );
  }
}
