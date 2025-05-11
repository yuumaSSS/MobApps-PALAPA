import 'package:flutter/material.dart';
import 'package:palapa_form/widgets/outline.dart';
import 'package:palapa_form/widgets/title1.dart';
import 'package:palapa_form/widgets/title2.dart';
import 'package:palapa_form/widgets/prev.dart';
import 'package:palapa_form/widgets/watermark.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Page3(),
    ),
  ));
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Outline(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Title1(page: '3/9'),
              SizedBox(height: 10),
              Title2(title: 'Kelengkapan'),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: Prev()),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 100),
              Watermark(),
            ],
          ),
        ),
      ),
    );
  }
}