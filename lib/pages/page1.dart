import 'package:flutter/material.dart';
import 'package:palapa_form/widgets/inputText.dart';
import 'package:palapa_form/widgets/next.dart';
import 'package:palapa_form/widgets/outline.dart';
import 'package:palapa_form/widgets/title1.dart';
import 'package:palapa_form/widgets/title2.dart';
import 'package:palapa_form/widgets/watermark.dart';
import 'page2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Page1(),
    ),
  ));
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Outline(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Title1(page: '1/9'),
              SizedBox(height: 10,),
              Title2(title: 'Data Inspeksi'),
              SizedBox(height: 10,),
              InputText(title: 'Nama Inspektor', hint: 'Masukkan nama inspektor'),
              SizedBox(height: 22),
              InputText(title: 'Nama Customer', hint: 'Masukkan nama customer'),
              SizedBox(height: 22),
              InputText(title: 'Cabang Inspeksi', hint: 'Contoh : Yogyakarta / Semarang'),
              SizedBox(height: 22),

              // Kurang Calendar : belum ada widget customnya, perlu buat inputCalendar dan calendar

              Row(
                children: [
                  Expanded(
                    child: Next(location: Page2(),)
                  ),
                ],
              ),
              SizedBox(height: 100,),
              Watermark(),
            ],
          ),
        ),
      ),
    );
  }
}