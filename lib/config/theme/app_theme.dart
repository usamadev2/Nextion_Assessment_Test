import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

abstract class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    useMaterial3: true,
  );
}
