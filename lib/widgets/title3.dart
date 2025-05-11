import 'package:flutter/material.dart';

class Title3 extends StatelessWidget {
  final String title;

  const Title3({
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
            fontWeight: FontWeight.w400,
            fontSize: 32,
            color: Colors.black,
            decoration: TextDecoration.none
          )
        ),
      ],
    );
  }
}