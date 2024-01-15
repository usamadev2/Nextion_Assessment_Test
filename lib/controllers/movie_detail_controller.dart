import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MovieDetailController extends GetxController {
  var favoriteString = ''.obs;

  void setFavoriteString(String value) {
    favoriteString.value = value;
  }
}
