import 'package:dio/dio.dart' as dio;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:nextion_assessmenttest/core/constants/api_constant/api_contant.dart';
import 'package:nextion_assessmenttest/core/constants/api_constant/app_key.dart';
import 'package:nextion_assessmenttest/models/movie_model.dart';

class MovieApi extends GetxController {
  /* ------------------- DashboardScreen Controller ------------------------------- */

  /// using Dio package for api Calling
  final dio.Dio _dioClient = dio.Dio(
    dio.BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: Duration(seconds: 5000),
      receiveTimeout: Duration(seconds: 3000),
    ),
  );

  /// Get Movie api Method
  Future<List<Movie>> getMovies() async {
    List<Movie> upcomingMovies = [];

    try {
      /// calling get api
      dio.Response response = await _dioClient.get(
        ApiConstants.upcomingMovies,
        queryParameters: {
          'api_key': AppKeys.apiKey,
        },
      );

      /// checking the response
      if (response.statusCode == 200) {
        var responseData = response.data;
        upcomingMovies = (responseData['results'] as List).map((movieMap) => Movie.fromMap(movieMap)).toList();
      }
    } catch (e) {
      throw Exception(e.toString());
    }

    return upcomingMovies;
  }
}
