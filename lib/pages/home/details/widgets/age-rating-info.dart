import 'package:flutter/material.dart';

class AgeRatingInfo extends StatelessWidget {
  const AgeRatingInfo({super.key, required this.adult});

  final bool adult;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Text("Classificação etária", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,
                      fontSize: 28)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(child: Text("É para maiores de 18 anos?: ${adult? "Sim" : "Não"}", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300, fontSize: 24)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0)),
          ],
        ),
        ],
      ),
    );
  }
}