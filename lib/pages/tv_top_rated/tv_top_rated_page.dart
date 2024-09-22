import 'package:flutter/material.dart';
import 'package:movie_app/models/tvshow_model.dart';
import 'package:movie_app/pages/tv_top_rated/widgets/tv_top_rated.dart';
import 'package:movie_app/services/api_services.dart';

class TVTopRatedPage extends StatefulWidget {
  const TVTopRatedPage({super.key});

  @override
  State<TVTopRatedPage> createState() => _TVTopRatedPageState();
}

class _TVTopRatedPageState extends State<TVTopRatedPage> {

  ApiServices apiServices = ApiServices();
  late Future<tvResults> showsFuture;

  @override
  void initState(){
    showsFuture = apiServices.getTopRatedTvShows();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Rated TV Shows'),
      ),
      body: FutureBuilder(
          future: showsFuture,
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
              final tvShows = snapshot.data!.tvShows;
              return ListView.builder(
                itemCount: tvShows.length,
                itemBuilder: (context, index) {
                  return TVTopRated(show: tvShows[index]);
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