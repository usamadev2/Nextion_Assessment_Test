import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nextion_assessmenttest/controllers/movie_controller_.dart';
import 'package:nextion_assessmenttest/core/constants/api_constant/api_contant.dart';
import 'package:nextion_assessmenttest/core/constants/app_colors.dart';
import 'package:nextion_assessmenttest/core/constants/strings/app_errors_strings.dart';
import 'package:nextion_assessmenttest/core/constants/strings/app_strings.dart';
import 'package:nextion_assessmenttest/core/services/db_service.dart';
import 'package:nextion_assessmenttest/core/widget/custom_text.dart';
import 'package:nextion_assessmenttest/models/favourite_model.dart';
import 'package:nextion_assessmenttest/models/movie_model.dart';
import 'package:nextion_assessmenttest/views/movie_details/movie_details_screen.dart';

// Not a screen don't use Scaffold
class HomeView extends GetView<MovieApi> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().screenHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60.h,
            width: double.infinity,
            padding: EdgeInsets.only(left: 12.0.sp),
            color: AppColors.blue,
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: AppStrings.homeAppBarName,
              fontSize: 18.0.sp,
              // color: AppColors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Movie>>(
                future: controller.getMovies(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        childAspectRatio: 3 / 2,
                      ),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => Get.toNamed(
                            MovieDetailsScreen.routeName,
                            arguments: Movie(
                              title: snapshot.data![index].title.toString(),
                              releaseData: snapshot.data![index].releaseData.toString(),
                              overview: snapshot.data![index].overview.toString(),
                              posterPath: snapshot.data![index].posterPath.toString(),
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0.r),
                            ),
                            margin: EdgeInsets.only(
                              top: 12.0.h,
                              left: ((index + 1).isEven) ? 0 : 12.0.w,
                              right: ((index + 1).isEven) ? 12.0.w : 0,
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0.r),
                                  child: Image.network(
                                    '${ApiConstants.imageBaseUrl}${snapshot.data![index].posterPath}',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    onPressed: () {
                                      // Add to favorites and store in SharedPreferences
                                      SharedPreferencesServices.addToFavorites(jsonEncode(FavouritModel(
                                        title: snapshot.data![index].title.toString(),
                                        releaseData: snapshot.data![index].releaseData.toString(),
                                        overview: snapshot.data![index].overview.toString(),
                                        imagePath: snapshot.data![index].posterPath.toString(),
                                      )));
                                    },
                                    icon: Icon(
                                      Icons.favorite,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8.0.w, bottom: 8.0.h),
                                    child: CustomText(
                                      maxLine: 1,
                                      text: snapshot.data![index].title.toString(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: CustomText(text: AppErrorsStrings.somethingWentWrong));
                  } else {
                    return Center(
                        child: const CircularProgressIndicator(
                      color: AppColors.green,
                    ));
                  }
                }),
          ),
        ],
      ),
    );
  }
}
