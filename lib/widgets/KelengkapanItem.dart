import 'package:flutter/material.dart';

class KelengkapanItem extends StatefulWidget {
  final String label;

  const KelengkapanItem({super.key, required this.label});

  @override
  State<KelengkapanItem> createState() => _KelengkapanItemState();
}

class _KelengkapanItemState extends State<KelengkapanItem> {
  bool? isLengkap; // null = belum dipilih

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
                onTap: () => setState(() => isLengkap = true),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: isLengkap == true ? Colors.lightBlue : Colors.transparent,
                    border: Border.all(color: Colors.blue),
                    borderRadius: const BorderRadius.horizontal(left: Radius.circular(8)),
                  ),
                  child: Center(
                    child: Text(
                      'Lengkap',
                      style: TextStyle(
                        color: isLengkap == true ? Colors.white : Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => setState(() => isLengkap = false),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: isLengkap == false ? Colors.pinkAccent : Colors.transparent,
                    border: Border.all(color: Colors.pink),
                    borderRadius: const BorderRadius.horizontal(right: Radius.circular(8)),
                  ),
                  child: Center(
                    child: Text(
                      'Tidak',
                      style: TextStyle(
                        color: isLengkap == false ? Colors.white : Colors.pink,
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
