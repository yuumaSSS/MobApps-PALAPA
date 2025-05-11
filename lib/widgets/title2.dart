import 'package:flutter/material.dart';

class Title2 extends StatelessWidget {
  final String title;

  const Title2({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w500,
            fontSize: 40,
            color: Colors.black,
            decoration: TextDecoration.none
          ),
        ),
      ],
    );
  }
}