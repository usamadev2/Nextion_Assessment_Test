import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nextion_assessmenttest/controllers/dashboard_controller.dart';
import 'package:nextion_assessmenttest/core/constants/strings/app_strings.dart';
import '../../../core/constants/app_colors.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int navBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 0,
      onTap: (value) {
        Get.find<DashBoardController>().dashBoardPagesController.jumpToPage(value);
        navBarIndex = value;

        setState(() {});
      },
      showUnselectedLabels: true,
      showSelectedLabels: true,
      items: items(),
      currentIndex: navBarIndex,
      selectedItemColor: AppColors.cPurple2,
      unselectedItemColor: AppColors.cBlack82,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      selectedLabelStyle: GoogleFonts.leagueSpartan(),
      unselectedLabelStyle: GoogleFonts.leagueSpartan(),
    );
  }

  List<BottomNavigationBarItem> items() {
    return [
      BottomNavigationBarItem(label: AppStrings.home, icon: Icon(Icons.home)),
      BottomNavigationBarItem(
          label: AppStrings.favourite,
          icon: Icon(
            Icons.favorite,
            // color: AppColors.cPurple2,
          )),
    ];
  }
}
