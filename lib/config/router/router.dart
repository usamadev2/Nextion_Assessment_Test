import 'package:get/get.dart';
import 'package:nextion_assessmenttest/views/dashboard/dashboard_screen.dart';
import 'package:nextion_assessmenttest/views/movie_details/movie_details_screen.dart';

/// Router of the app for navigation
abstract class AppRouter {
  static final List<GetPage<dynamic>> routes = [
    /* ------------------- DashboardScreen ------------------ */
    GetPage(
      name: DashboardScreen.routeName,
      page: () => const DashboardScreen(),
    ),
    /* -------------------MovieDetail Screen ------------------ */
    GetPage(
      name: MovieDetailsScreen.routeName,
      page: () => MovieDetailsScreen(),
    ),
  ];
}
