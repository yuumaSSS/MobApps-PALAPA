import 'package:flutter/material.dart';
import '../widgets/RatingBarWidget.dart';
import '../widgets/inputText.dart';
import '../widgets/next.dart';
import '../widgets/prev.dart';
import '../widgets/watermark.dart';
import 'page55.dart';

class Page54 extends StatelessWidget {
  const Page54({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> fiturList = [
      "Ban Depan",
      "Velg Depan",
      "Disc Brake",
      "Master Rem",
      "Tie Rod",
      "Gardan",
      "Ban Belakang",
      "Velg Belakang",
      "Brake Pad",
      "Crossmember",
      "Knalpot",
      "Balljoint",
      "Rocksteer",
      "Karet Boot",
      "Upper-Lower Arm",
      "Shock Breaker",
      "Link Stabilizer"
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const Text("5/9", style: TextStyle(color: Colors.orange, fontSize: 20)),
              const SizedBox(height: 5),
              const Text("Penilaian (5)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              const SizedBox(height: 10),
              const Text("Ban dan Kaki-Kaki", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
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
                  Expanded(child: Next(location: Page55())), // Ganti dengan Page6 nanti
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
