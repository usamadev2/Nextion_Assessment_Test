import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesServices {
  /* ------------------- save data in SharedPreferences class------------------------------- */
  static const String _favoritesKey = 'favorites';

/* ------------------- get data in SharedPreferences ------------------------------- */
  static Future<List<String>> getFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String>? favorites = prefs.getStringList(_favoritesKey);
    return favorites ?? [];
  }

  /* ------------------- add data in SharedPreferences ------------------------------- */
  static Future<void> addToFavorites(String movieData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favorites = await getFavorites();
    favorites.add(movieData);
    prefs.setStringList(_favoritesKey, favorites);
  }

/* ------------------- remove data in SharedPreferences ------------------------------- */
  static Future<void> removeFromFavorites(String movieTitle) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favorites = await getFavorites();
    favorites.remove(movieTitle);
    prefs.setStringList(_favoritesKey, favorites);
  }
}
