import 'package:flutter/material.dart';

class Title1 extends StatelessWidget {
  final String page;

  const Title1({
    super.key,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          page,
          style: TextStyle(
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w300,
            fontSize: 48,
            color: Color(0xFFF4622F),
            decoration: TextDecoration.none
          ),
        ),
      ],
    );
  }
}

// Buat angka page, page yang dimaksud yang paling atas seperti di figma