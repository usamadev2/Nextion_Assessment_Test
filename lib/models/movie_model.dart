/* ------------------- Movie Model Class ------------------------------- */

import 'dart:convert';

class Movie {
  Movie({
    this.title,
    this.releaseData,
    this.overview,
    this.posterPath,
  });

  final String? title;
  final String? releaseData;
  final String? overview;
  final String? posterPath;

  Movie copyWith({
    String? title,
    String? releaseData,
    String? overview,
    String? posterPath,
  }) {
    return Movie(
      title: title ?? this.title,
      releaseData: releaseData ?? this.releaseData,
      overview: overview ?? this.overview,
      posterPath: posterPath ?? this.posterPath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'releaseData': releaseData,
      'overview': overview,
      'posterPath': posterPath,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      title: map['title'] != null ? map['title'] as String : null,
      releaseData: map['release_date'] != null ? map['release_date'] as String : null,
      overview: map['overview'] != null ? map['overview'] as String : null,
      posterPath: map['poster_path'] != null ? map['poster_path'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(String source) => Movie.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Movie(title: $title, releaseData: $releaseData, overview: $overview, posterPath: $posterPath)';
  }

  @override
  bool operator ==(covariant Movie other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.releaseData == releaseData &&
        other.overview == overview &&
        other.posterPath == posterPath;
  }

  @override
  int get hashCode {
    return title.hashCode ^ releaseData.hashCode ^ overview.hashCode ^ posterPath.hashCode;
  }
}
