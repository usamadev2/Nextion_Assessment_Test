import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nextion_assessmenttest/views/dashboard/favourite/favourite_view.dart';
import 'package:nextion_assessmenttest/views/dashboard/home/home_view.dart';

class DashBoardController extends GetxController {
  /* ------------------- DashboardScreen Controller ------------------------------- */

  static DashBoardController instance = Get.find<DashBoardController>();

  List<Widget> dashboardPages = [
    const MovieListScreen(),
    const FavouriteView(),
  ];

  late PageController dashBoardPagesController;
  late ScrollController categoriesController;

  @override
  void onInit() {
    super.onInit();
    dashBoardPagesController = PageController(initialPage: 0);
    categoriesController = ScrollController();
  }
}
