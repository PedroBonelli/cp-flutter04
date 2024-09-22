import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LanguageInfo extends StatelessWidget {
  const LanguageInfo({super.key, required this.originalLanguage, required this.originalTitle});

  final String originalLanguage;
  final String originalTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Text("Linguagem", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,
                      fontSize: 28)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(child: Text("Título original: "+originalTitle, style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300, fontSize: 24)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0)),
            Container(child: Text("Língua original: " + originalLanguage, style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300, fontSize: 24)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0)),
          ],
        ),
        ],
      ),
    );
  }
}