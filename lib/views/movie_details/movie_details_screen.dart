import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nextion_assessmenttest/controllers/movie_detail_controller.dart';
import 'package:nextion_assessmenttest/core/constants/api_constant/api_contant.dart';
import 'package:nextion_assessmenttest/core/constants/app_colors.dart';
import 'package:nextion_assessmenttest/core/constants/strings/app_strings.dart';
import 'package:nextion_assessmenttest/core/extensions/space_xy.dart';
import 'package:nextion_assessmenttest/core/widget/custom_text.dart';
import 'package:nextion_assessmenttest/models/movie_model.dart';

class MovieDetailsScreen extends GetView<MovieDetailController> {
  MovieDetailsScreen({super.key});

  static const String routeName = '/movie-detail-screen';
  final Movie screenData = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 350.0.h,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0.r),
                bottomRight: Radius.circular(16.0.r),
              ),
              child: Image.network(
                '${ApiConstants.imageBaseUrl}${screenData.posterPath.toString()}',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          16.0.spaceY,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: CustomText(
              text: screenData.title.toString(),
              fontSize: 26.0.sp,
              maxLine: 1,
            ),
          ),
          16.0.spaceY,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: AppStrings.releaseDate,
                  fontSize: 18.0.sp,
                  maxLine: 1,
                ),
                CustomText(
                  text: screenData.releaseData.toString(),
                  fontSize: 18.0.sp,
                  maxLine: 1,
                ),
              ],
            ),
          ),
          36.0.spaceY,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: CustomText(
              text: AppStrings.overView,
              fontSize: 18.0.sp,
            ),
          ),
          8.0.spaceY,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.h),
            child: SizedBox(
              child: CustomText(
                text: screenData.overview.toString(),
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w300,
                maxLine: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
