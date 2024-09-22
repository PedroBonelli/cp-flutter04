import 'package:flutter/material.dart';
import 'package:movie_app/common/utils.dart';
import 'package:movie_app/pages/home/details/widgets/age-rating-info.dart';
import 'package:movie_app/pages/home/details/widgets/language-info.dart';
import 'package:movie_app/pages/home/details/widgets/movie_details.dart';
import 'package:movie_app/pages/home/details/widgets/rating-info.dart';
import 'package:movie_app/pages/home/details/widgets/release-info.dart';
import 'package:movie_app/pages/home/details/widgets/description-info.dart';
import 'package:movie_app/pages/home/details/widgets/poster-image.dart';
import 'package:movie_app/services/api_services.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/pages/top_rated/widgets/top_rated_movie.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage({super.key, required this.movieDetails});

  final MovieDetails movieDetails;
  final ApiServices services = ApiServices();
  late Future<Result> recommendedMoviesFuture = services.getRecommendedMovies(movieDetails.movie.id);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes - ${movieDetails.movie.title}'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RatingInfo(ratingValue: movieDetails.movie.voteAverage, ratingVotes: movieDetails.movie.voteCount, popularity: movieDetails.movie.popularity),
          LanguageInfo(originalLanguage: movieDetails.movie.originalLanguage, originalTitle: movieDetails.movie.originalTitle),
          AgeRatingInfo(adult: movieDetails.movie.adult),
          ReleaseInfo(releaseDate: movieDetails.movie.releaseDate),
          DescriptionInfo(movieInfo: movieDetails.movie.overview),
          Expanded(child: PosterImage(posterPath: movieDetails.movie.posterPath))
        ],
      ),
    );
  }
}
