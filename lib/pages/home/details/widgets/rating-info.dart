import 'package:flutter/material.dart';

class RatingInfo extends StatelessWidget {
  const RatingInfo({super.key, required this.ratingValue, required this.ratingVotes, required this.popularity});

  final double ratingValue;
  final int ratingVotes;
  final double popularity;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Text("Rating", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 28)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(child: Text("Score médio: ${ratingValue}/10", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300, fontSize: 24)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0)),
            Container(child: Text("Quantidade de votos: ${ratingVotes}", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300, fontSize: 24)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0)),
            Container(child: Text("Popularidade: ${popularity}", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300, fontSize: 24)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0)),
          ],
        ),
        ],
      ),
    );
  }
  }