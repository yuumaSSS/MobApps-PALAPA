import 'package:flutter/material.dart';
import '../widgets/RatingBarWidget.dart';
import '../widgets/inputText.dart';
import '../widgets/next.dart';
import '../widgets/prev.dart';
import '../widgets/watermark.dart';
import 'page52.dart';

class Page51 extends StatelessWidget {
  const Page51({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> fiturList = [
      "Getaran Mesin",
      "Suara Mesin",
      "Transmisi",
      "Pompa Power Steering",
      "Cover Timming Chain",
      "Oli Power Steering",
      "Accu",
      "Kompresor AC",
      "Fan",
      "Selang",
      "Karter Oli",
      "Oli Rem",
      "Kabel",
      "Kondensor",
      "Radiator",
      "Cylinder Head",
      "Oli Mesin",
      "Air Radiator",
      "Cover Klep",
      "Alternator",
      "Water Pump",
      "Belt",
      "Oli Tranmisi",
      "Cylinder Block",
      "Bushing Besar",
      "Bushing Kecil",
      "Tutup Radiator",
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const Text("5/9", style: TextStyle(color: Colors.orange, fontSize: 20)),
              const SizedBox(height: 5),
              const Text("Penilaian (2)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              const SizedBox(height: 10),
              const Text("Hasil Inspeksi Mesin", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 10),

              // Rating untuk setiap fitur
              ...fiturList.map((fitur) => RatingBarWidget(label: fitur)).toList(),

              const SizedBox(height: 10),
              const InputText(
                title: "Catatan",
                hint: "• Catatan 1\n• Catatan 2\n• Catatan 3",
              ),
              const SizedBox(height: 20),

              Row(
                children: const [
                  Expanded(child: Prev()),
                  SizedBox(width: 10),
                  Expanded(child: Next(location: Page52())), // Ganti dengan Page6 nanti
                ],
              ),
              const SizedBox(height: 100),
              const Watermark(),
            ],
          ),
        ),
      ),
    );
  }
}
