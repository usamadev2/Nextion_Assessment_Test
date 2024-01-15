import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextion_assessmenttest/controllers/dashboard_controller.dart';
import 'package:nextion_assessmenttest/views/dashboard/widget/bottom_van_bar.dart';

class DashboardScreen extends GetView<DashBoardController> {
  const DashboardScreen({super.key});

  static const String routeName = "/dashboard";

  @override
  Widget build(BuildContext context) {
    Get.put(
      DashBoardController(),
    );
    return Scaffold(
      /// THIS IS YOUR MAIN SCREEN, ADD YOUR BOTTOM NAV BAR IN THIS SCREEN
      bottomNavigationBar: const BottomNavbar(),
      body: SafeArea(
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller.dashBoardPagesController,
          itemCount: controller.dashboardPages.length,
          itemBuilder: (context, index) => controller.dashboardPages[index],
        ),
      ),
    );
  }
}
