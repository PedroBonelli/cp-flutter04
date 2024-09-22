import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DescriptionInfo extends StatelessWidget {
  const DescriptionInfo({super.key, required this.movieInfo});

  final String movieInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Text("Descrição do filme", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,
                    fontSize: 28)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
          Padding(child: Text(movieInfo, style: TextStyle(fontSize: 24)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0))
        ]
      ),
    );
  }
}