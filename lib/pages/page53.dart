import 'package:flutter/material.dart';
import '../widgets/RatingBarWidget.dart';
import '../widgets/inputText.dart';
import '../widgets/next.dart';
import '../widgets/prev.dart';
import '../widgets/watermark.dart';
import 'page54.dart';

class Page53 extends StatelessWidget {
  const Page53({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> fiturList = [
      "Bumper Depan",
      "Kap Mesin",
      "Lampu Utama",
      "Panel Atap",
      "Grill",
      "Lampu Foglamp",
      "Kaca Bening",
      "Wiper Belakang",
      "Bumper Belakang",
      "Lampu Belakang",
      "Trunklid",
      "Kaca Depan",
      "Fender Kanan",
      "Quarter Panel Kanan",
      "Pintu Belakang Kanan",
      "Spion Kanan",
      "Lisplang Kanan",
      "Side Skirt Kanan",
      "Daun Wiper",
      "Pintu Belakang",
      "Fender Kanan",
      "Quarter Panel Kiri",
      "Pintu Depan",
      "Kaca Jendela Kanan",
      "Pintu Belakang Kiri",
      "Spion Kiri",
      "Pintu Depan Kiri",
      "Kaca Jendela Kiri",
      "Lisplang Kanan",
      "Side Skirt Kanan",
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const Text("5/9", style: TextStyle(color: Colors.orange, fontSize: 20)),
              const SizedBox(height: 5),
              const Text("Penilaian (4)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              const SizedBox(height: 10),
              const Text("Hasil Inspeksi Eksterior", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
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
                  Expanded(child: Next(location: Page54())), // Ganti dengan Page6 nanti
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
