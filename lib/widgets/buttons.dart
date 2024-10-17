import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.all(
          Radius.circular(
            18,
          ),
        ),
      ),
      child: const Center(
        child: Text(
          'Shop Now',
          style: TextStyle(
              fontSize: 21, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
    );
  }
}
