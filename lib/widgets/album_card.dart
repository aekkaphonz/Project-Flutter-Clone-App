// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify/views/album_view.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final Function onTap;
  final double size;
  const AlbumCard({
    required this.image,
    required this.label,
    required this.onTap,
    this.size = 120,
  }) : super(key: null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(
              image: image,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: image,
            width: size,
            height: size,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(label),
        ],
        
      ),
    );
  }
}
