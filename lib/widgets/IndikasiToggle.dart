import 'package:flutter/material.dart';

class IndikasiToggle extends StatefulWidget {
  final String label;
  const IndikasiToggle({super.key, required this.label});

  @override
  State<IndikasiToggle> createState() => _IndikasiToggleState();
}

class _IndikasiToggleState extends State<IndikasiToggle> {
  bool? terindikasi;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => setState(() => terindikasi = false),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: terindikasi == false ? Colors.lightBlue : Colors.transparent,
                    border: Border.all(color: Colors.blue),
                    borderRadius: const BorderRadius.horizontal(left: Radius.circular(8)),
                  ),
                  child: Center(
                    child: Text(
                      'Tidak ada',
                      style: TextStyle(
                        color: terindikasi == false ? Colors.white : Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => setState(() => terindikasi = true),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: terindikasi == true ? Colors.pinkAccent : Colors.transparent,
                    border: Border.all(color: Colors.pink),
                    borderRadius: const BorderRadius.horizontal(right: Radius.circular(8)),
                  ),
                  child: Center(
                    child: Text(
                      'Terindikasi',
                      style: TextStyle(
                        color: terindikasi == true ? Colors.white : Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
