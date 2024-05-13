
import 'package:flutter/material.dart';

class GridTilesCategory extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String slug;
  
  const GridTilesCategory({
    required this.name,
    required this.imageUrl,
    required this.slug,
  
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle category tile click
      },
      child: Column(
        children: [
          Image.network(
            imageUrl,
            width: 100,
            height: 100,
          ),
      
          Text(
            name,
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}