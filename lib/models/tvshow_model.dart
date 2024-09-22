import 'dart:convert';

class tvResults {
  int page;
  List<tvShow> tvShows;
  int totalPages;
  int totalResults;

  tvResults({
    required this.page, 
    required this.tvShows,
    required this.totalPages,
    required this.totalResults,
 });

  factory tvResults.fromRawJson(String str) => tvResults.fromJson(json.decode(str));

  factory tvResults.fromJson(Map<String, dynamic> json) => tvResults(
        page: json["page"],
        tvShows: List<tvShow>.from(json["results"].map((x) => tvShow.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );

}



class tvShow{
  bool adult;
  String backdropPath;
  List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity; 
  String posterPath;
  DateTime? firstAirDate;
  String name;
  double voteAverage;
  int voteCount;

  tvShow({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.firstAirDate,
    required this.name,
    required this.voteAverage,
    required this.voteCount,
  });

  factory tvShow.fromRawJson(String str) => tvShow.fromJson(json.decode(str));

  factory tvShow.fromJson(Map<String, dynamic> json) => tvShow(
    adult: json["adult"] ?? false,
    backdropPath: json["backdrop_path"] ?? '',
    genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
    id: json["id"] ?? 0,
    originalLanguage: json["original_language"] ?? '',
    overview: json["overview"] ?? '',
    popularity: json["popularity"]?.toDouble() ?? 0,
    posterPath: json["poster_path"] ?? '',
    firstAirDate: DateTime.tryParse(json["first_air_date"]),
    name: json["name"] ?? '',
    voteAverage: json["vote_average"]?.toDouble() ?? 0,
    voteCount: json["vote_count"] ?? 0,
    originalTitle: json["original_title"] ?? '',
  );

}