import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Notable work',
            style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(
          'Based on the popularity articles',
          style: GoogleFonts.lato(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
