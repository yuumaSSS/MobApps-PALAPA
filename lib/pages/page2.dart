import 'package:flutter/material.dart';
import 'package:palapa_form/widgets/inputText.dart';
import 'package:palapa_form/widgets/next.dart';
import 'package:palapa_form/widgets/outline.dart';
import 'package:palapa_form/widgets/title1.dart';
import 'package:palapa_form/widgets/title2.dart';
import 'package:palapa_form/widgets/prev.dart';
import 'package:palapa_form/widgets/watermark.dart';
import 'page3.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Page2(),
    ),
  ));
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
              Title1(page: '2/9'),
              SizedBox(height: 10),
              Title2(title: 'Data Kendaraan'),
              SizedBox(height: 10),
              InputText(title: 'Merek Kendaraan', hint: 'Contoh : Toyota / Honda'),
              SizedBox(height: 22),
              InputText(title: 'Tipe Kendaraan', hint: 'Contoh : Avanza / Jazz'),
              SizedBox(height: 22),
              InputText(title: 'Tahun Kendaraan', hint: 'Masukkan tahun kendaraan'),
              SizedBox(height: 22),
              InputText(title: 'Transmisi', hint: 'Masukkan jenis transmisi kendaraan'),
              SizedBox(height: 22),
              InputText(title: 'Warna Kendaraan', hint: 'Masukkan warna kendaraan'),
              SizedBox(height: 22),
              InputText(title: 'Odometer', hint: 'Masukkan odometer kendaraan'),
              SizedBox(height: 22),
              InputText(title: 'Kepemilikan', hint: 'Masukkan kepemilikan kendaraan'),
              SizedBox(height: 22),
              InputText(title: 'Plat Nomor', hint: 'Masukkan plat nomor kendaraan'),
              SizedBox(height: 22),

              // Masih kurang beberapa

              Row(
                children: [
                  Expanded(child: Prev()),
                  SizedBox(width: 10),
                  Expanded(child: Next(location: Page3()))
                ],
              ),
              SizedBox(height: 100),
              Spacer(),
              Watermark(),
            ],
          ),
        ),
      ),
    );
  }
}