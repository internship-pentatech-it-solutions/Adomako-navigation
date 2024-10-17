import 'package:flutter/material.dart';
import 'package:jewelry_app/widgets/buttons.dart';

class CollectionsContainer extends StatefulWidget {
  const CollectionsContainer({super.key});

  @override
  State<CollectionsContainer> createState() => _CollectionsContainerState();
}

class _CollectionsContainerState extends State<CollectionsContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 370,
        height: 180,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 220, 202, 196),
          borderRadius: BorderRadius.circular(
            23,
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 18, top: 33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Collection',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Discount 50% for ",
                    style: TextStyle(fontSize: 19),
                  ),
                  Text(
                    "first transaction",
                    style: TextStyle(fontSize: 19),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyButtons()
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image(
                image: AssetImage(
                  'assets/images/collections_image.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
