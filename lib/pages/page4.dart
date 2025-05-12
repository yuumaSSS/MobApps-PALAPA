import 'package:flutter/material.dart';
import 'package:palapa_form/pages/page3.dart';
import 'package:palapa_form/pages/page5.dart';

import '../widgets/IndikasiToggle.dart';
import '../widgets/RatingBarWidget.dart';
import '../widgets/inputText.dart';
import '../widgets/next.dart';
import '../widgets/prev.dart';
import '../widgets/watermark.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final TextEditingController _interiorNoteController = TextEditingController();
  final TextEditingController _eksteriorNoteController = TextEditingController();
  final TextEditingController _kakiNoteController = TextEditingController();
  final TextEditingController _mesinNoteController = TextEditingController();
  final TextEditingController _keseluruhanNoteController = TextEditingController();

  final List<Map<String, String>> estimasiList = [
    {"item": "Tie Rod Kanan Kiri", "harga": "700.000"},
    {"item": "Spooring", "harga": "300.000"},
  ];

  final TextEditingController _itemController = TextEditingController();
  final TextEditingController _hargaController = TextEditingController();

  void _addItem() {
    if (_itemController.text.isNotEmpty && _hargaController.text.isNotEmpty) {
      setState(() {
        estimasiList.add({
          "item": _itemController.text,
          "harga": _hargaController.text,
        });
        _itemController.clear();
        _hargaController.clear();
      });
    }
  }

  void _removeItem(int index) {
    setState(() {
      estimasiList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const Text("4/9", style: TextStyle(color: Colors.orange, fontSize: 20)),
              const SizedBox(height: 5),
              const Text("Hasil Inspeksi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              const SizedBox(height: 15),

              RatingBarWidget(label: "Interior"),
              const SizedBox(height: 5),
              TextField(
                controller: _interiorNoteController,
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: "Keterangan Interior",
                  hintText: "Tulis deskripsi kondisi interior",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              RatingBarWidget(label: "Eksterior"),
              const SizedBox(height: 5),
              TextField(
                controller: _eksteriorNoteController,
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: "Keterangan Eksterior",
                  hintText: "Tulis deskripsi kondisi Eksterior",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              RatingBarWidget(label: "Kaki-kaki"),
              const SizedBox(height: 5),
              TextField(
                controller: _kakiNoteController,
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: "Keterangan Kaki-Kaki",
                  hintText: "Tulis deskripsi kondisi Kaki-Kaki",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              RatingBarWidget(label: "Mesin"),
              const SizedBox(height: 5),
              TextField(
                controller: _mesinNoteController,
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: "Keterangan Mesin",
                  hintText: "Tulis deskripsi kondisi Mesin",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              RatingBarWidget(label: "Penilaian Keseluruhan"),
              const SizedBox(height: 5),
              TextField(
                controller: _keseluruhanNoteController,
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: "Keterangan Keseluruhan",
                  hintText: "Tulis deskripsi kondisi Keseluruhan",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              const IndikasiToggle(label: "Indikasi Tabrakan"),
              const IndikasiToggle(label: "Indikasi Banjir"),
              const IndikasiToggle(label: "Indikasi Odometer Reset"),

              InputText(title: 'Posisi Ban', hint: 'Contoh : Ban Agak Miring Ke kanan/kiri'),
              SizedBox(height: 22),
              InputText(title: 'Merk', hint: 'Contoh : Bridgestone'),
              SizedBox(height: 22),
              InputText(title: 'Tipe Velg', hint: 'Contoh : Alloy Standar'),
              SizedBox(height: 22),
              InputText(title: 'Ketebalan', hint: 'Contoh : Ban sudah aus'),
              SizedBox(height: 22),

              const Text("Estimasi Perbaikan", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              ...estimasiList.asMap().entries.map((entry) {
                int index = entry.key;
                var item = entry.value;
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: Text(item['item']!, style: const TextStyle(fontWeight: FontWeight.bold))),
                      Text(item['harga']!),
                      IconButton(
                        icon: const Icon(Icons.close, size: 18),
                        onPressed: () => _removeItem(index),
                      ),
                    ],
                  ),
                );
              }).toList(),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _itemController,
                      decoration: const InputDecoration(
                        hintText: "Masukkan perbaikan",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _hargaController,
                      decoration: const InputDecoration(
                        hintText: "Masukkan harga",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextButton.icon(
                onPressed: _addItem,
                icon: const Icon(Icons.add, color: Colors.deepPurple),
                label: const Text("Tambah List"),
              ),

              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: Prev()),
                  const SizedBox(width: 10),
                  Expanded(child: Next(location: Page5())),
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
