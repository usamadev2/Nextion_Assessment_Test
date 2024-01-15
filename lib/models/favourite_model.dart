/* ------------------- Favourite Model Class ------------------------------- */

class FavouritModel {
  String title;
  String releaseData;
  String overview;
  String imagePath;

  FavouritModel({
    required this.title,
    required this.releaseData,
    required this.overview,
    required this.imagePath,
  });

  // Named constructor to create an instance from a JSON map
  factory FavouritModel.fromJson(Map<String, dynamic> json) {
    return FavouritModel(
      title: json['title'] ?? '',
      releaseData: json['releaseData'] ?? '',
      overview: json['overview'] ?? '',
      imagePath: json['imagePath'] ?? '',
    );
  }

  // Method to convert an instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'releaseData': releaseData,
      'overview': overview,
      'imagePath': imagePath,
    };
  }
}
