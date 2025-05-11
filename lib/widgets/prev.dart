import 'package:flutter/material.dart';

class Prev extends StatefulWidget {
  const Prev({super.key});

  @override
  _ButtonColor createState() => _ButtonColor();
}

class _ButtonColor extends State<Prev>{
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ElevatedButton(
      onPressed: () {
        setState(() {
          _isPressed = !_isPressed;
        });
        Future.delayed(Duration(milliseconds: 500), () {
          if (mounted) {
            setState(() {
              _isPressed = !_isPressed;
            });
          }
        });
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _isPressed ? Color(0xFFCBCBCB) : Color(0xFFFF7D43),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w700,
        fontSize: 20,
        ),
      ),
      child: const Text('Prev'),
      ),
    );
  }
}