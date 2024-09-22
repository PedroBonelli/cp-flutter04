import 'package:flutter/material.dart';
import 'package:movie_app/pages/genres/widgets/genre.dart';
import 'package:movie_app/services/api_services.dart';
import 'package:movie_app/models/genre_model.dart';

class GenrePage extends StatefulWidget {
  const GenrePage({super.key});

  @override
  State<GenrePage> createState() => _GenrePageState();
}

class _GenrePageState extends State<GenrePage> {

  ApiServices apiServices = ApiServices();
  late Future<GenreResults> genresFuture;

  @override
  void initState() {
    genresFuture = apiServices.getGenres();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('Genres'),
      ),
      body: FutureBuilder(
          future: genresFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }
            if (snapshot.hasData) {
              final genres = snapshot.data!.genres;
              return ListView.builder(
                itemCount: genres.length,
                itemBuilder: (context, index) {
                  return GenreWidget(genre: genres[index],);
                },
              );
            }

            return const Center(
              child: Text('No data found'),
            );
          }),
    );
  }
}