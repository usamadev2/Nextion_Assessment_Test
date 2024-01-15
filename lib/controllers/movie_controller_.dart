import 'package:dio/dio.dart' as dio;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:nextion_assessmenttest/core/constants/api_constant/api_contant.dart';
import 'package:nextion_assessmenttest/core/constants/api_constant/app_key.dart';
import 'package:nextion_assessmenttest/models/movie_model.dart';

class MovieApi extends GetxController {
  final dio.Dio _dioClient = dio.Dio(
    dio.BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: Duration(seconds: 5000),
      receiveTimeout: Duration(seconds: 3000),
    ),
  );

  Future<List<Movie>> getMovies() async {
    List<Movie> upcomingMovies = [];

    try {
      dio.Response response = await _dioClient.get(
        ApiConstants.upcomingMovies,
        queryParameters: {
          'api_key': AppKeys.apiKey,
        },
      );

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
