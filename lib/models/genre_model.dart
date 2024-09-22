import 'dart:convert';

class GenreResults{
  List<Genre> genres;

  GenreResults({
    required this.genres
  });

  factory GenreResults.fromRawJson(String str) => GenreResults.fromJson(json.decode(str));

  factory GenreResults.fromJson(Map<String, dynamic> json) => GenreResults(
    genres: List<Genre>.from(json["genres"].map((x) => Genre.fromJson(x)))
  );

}

class Genre {
  int id;
  String name;

  Genre({
    required this.id,
    required this.name
  });

  factory Genre.fromRawJson(String str) => Genre.fromJson(json.decode(str));

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
    id: json["id"],
    name: json["name"]
  );

}