import 'package:flutter/material.dart';
import 'package:movie_app/common/utils.dart';


class PosterImage extends StatelessWidget {
  const PosterImage({super.key, required this.posterPath});

  final String posterPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Text("Imagem de pôster", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,
                    fontSize: 28)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              
                child: Image.network('$imageUrl$posterPath'),
             
            ),
          )
        ]
      ),
    );
  }
}