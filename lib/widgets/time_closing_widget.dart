import 'package:flutter/material.dart';

class ClosingBox extends StatefulWidget {
  final String boxText;
  const ClosingBox({super.key, required this.boxText});

  @override
  State<ClosingBox> createState() => _ClosingBoxState();
}

class _ClosingBoxState extends State<ClosingBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 251, 236, 230),
        borderRadius: BorderRadius.all(
          Radius.circular(
            6,
          ),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            widget.boxText,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              color: Colors.brown[300],
            ),
          ),
        ),
      ),
    );
  }
}
