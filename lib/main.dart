import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nextion_assessmenttest/app.dart';
import 'package:nextion_assessmenttest/core/global/controller_injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// initialize controller
  initControllers();

  /// SharedPreferences localy data store
  await SharedPreferences.getInstance();

  // Waiting for the window size to be initialized
  await ScreenUtil.ensureScreenSize();

  runApp(
    const NextionAssessmentTestApp(),
  );
}
