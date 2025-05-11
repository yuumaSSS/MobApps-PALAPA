import 'package:flutter/material.dart';

class Watermark extends StatelessWidget {
  const Watermark({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        'copyright by Inspeksi Mobil Jogja',
        style: TextStyle(
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w300,
          fontSize: 16,
          color: const Color(0xFFA8A8A8),
        ),
      ),
    );
  }
}

// Masih ada problem, dia tidak bisa muncul di paling bawah