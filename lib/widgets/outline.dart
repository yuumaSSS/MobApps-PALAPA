import 'package:flutter/material.dart';

class Outline extends StatelessWidget {
  final Widget child;

  const Outline({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: child,
    ); 
  }
}

// Buat outline agar semua file sama paddingnya