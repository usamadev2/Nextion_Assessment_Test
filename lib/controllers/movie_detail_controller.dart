import 'package:flutter/services.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nextion_assessmenttest/core/constants/app_colors.dart';

class MovieDetailController extends GetxController {
  RxString status = 'favourite'.obs;
  void toggleStatus() {
    if (status.value == 'favourite') {
      status.value = '';
    } else {
      status.value = 'favourite';
    }
  }

  Color get iconColor => status.value == 'favourite' ? AppColors.cPurple2 : AppColors.white;
}
