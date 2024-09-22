import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReleaseInfo extends StatelessWidget {
  const ReleaseInfo({super.key, required this.releaseDate});

  final DateTime? releaseDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Text("Lançamento", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,
                      fontSize: 28)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(child: Text(releaseDate == null   ? '' : DateFormat("d 'de' MMM 'de' y").format(releaseDate!), style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300, fontSize: 24)), padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0)),
          ],
        ),
        ],
      ),
    );
  }
}