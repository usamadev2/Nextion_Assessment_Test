import 'package:get/get.dart';
import 'package:nextion_assessmenttest/controllers/dashboard_controller.dart';
import 'package:nextion_assessmenttest/controllers/movie_controller_.dart';
import 'package:nextion_assessmenttest/controllers/movie_detail_controller.dart';

/// invoke to initialize the controllers (inject controllers)
void initControllers() {
  Get.put(DashBoardController());
  Get.put(MovieApi());
  Get.put(MovieDetailController());
}
