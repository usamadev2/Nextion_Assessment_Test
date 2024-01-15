import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nextion_assessmenttest/views/dashboard/dashboard_screen.dart';
import 'config/router/router.dart';
import 'config/theme/app_theme.dart';
import 'core/constants/strings/app_strings.dart';

class NextionAssessmentTestApp extends StatelessWidget {
  const NextionAssessmentTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            title: AppStrings.appName,
            getPages: AppRouter.routes,
            initialRoute: DashboardScreen.routeName);
      },
    );
  }
}
