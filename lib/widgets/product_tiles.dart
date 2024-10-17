import 'package:flutter/material.dart';

class ProductTiles extends StatelessWidget {
  const ProductTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 260,
        height: 350,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 220, 202, 196),
          borderRadius: BorderRadius.circular(
            23,
          ),
        ),
      ),
    );
  }
}
