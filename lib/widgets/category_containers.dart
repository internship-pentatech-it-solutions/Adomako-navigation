import 'package:flutter/material.dart';

class CategoryContainer extends StatefulWidget {
  final String categoryName;
  const CategoryContainer({super.key, required this.categoryName});

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 90,
            width: 95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(58),
              color: Colors.grey.shade300,
            ),
            child: const ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(58),
              ),
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/collections_image.png',
                ),
              ),
            ),
          ),
          Text(
            widget.categoryName,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.brown[400],
            ),
          )
        ],
      ),
    );
  }
}
