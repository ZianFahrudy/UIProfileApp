import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerArticleCard extends StatelessWidget {
  const BannerArticleCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.blueGrey[400]],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 130,
            height: 30,
            child: Center(
                child: Text('Featured Article',
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
            decoration: BoxDecoration(
                color: Colors.blueGrey[700],
                borderRadius: BorderRadius.circular(6)),
          ),
          Text(
              'lorem ipsum lpren makaroni kentang goreng lorem gass',
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ],
      ),
    );
  }
}
