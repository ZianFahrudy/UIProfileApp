import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageListItem extends StatelessWidget {
  const ImageListItem(
      {Key key,
      @required this.listImage,
      @required this.category,
      @required this.description})
      : super(key: key);

  final String listImage;
  final String category;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            listImage,
            width: 150,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(category,
            style: GoogleFonts.lato(
                fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey)),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 150,
          child: Text(description,
              maxLines: 2,
              overflow: TextOverflow.clip,
              style: GoogleFonts.lato(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54)),
        ),
      ],
    );
  }
}
