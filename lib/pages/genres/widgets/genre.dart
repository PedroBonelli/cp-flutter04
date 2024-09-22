import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/models/genre_model.dart';

class GenreWidget extends StatelessWidget {
  const GenreWidget({super.key,
   required this.genre});

  final Genre genre;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(child: Row(children: [Padding(child: Icon(Icons.star), padding: EdgeInsets.symmetric(horizontal: 10)), Text(genre.name)]), padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10)),
      color: Colors.white10,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      );
  }
}