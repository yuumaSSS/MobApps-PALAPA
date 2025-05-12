import 'package:flutter/material.dart';
import 'package:palapa_form/pages/page4.dart';
import 'package:palapa_form/widgets/outline.dart';
import 'package:palapa_form/widgets/title1.dart';
import 'package:palapa_form/widgets/title2.dart';
import 'package:palapa_form/widgets/prev.dart';
import 'package:palapa_form/widgets/watermark.dart';

import '../widgets/KelengkapanItem.dart';
import '../widgets/next.dart';

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
          padding: const EdgeInsets.all(16),
          children: [
            Title1(page: '3/9'),
            const SizedBox(height: 10),
            Title2(title: 'Kelengkapan'),
            const SizedBox(height: 20),

            const KelengkapanItem(label: 'Buku Service'),
            const KelengkapanItem(label: 'Kunci Serep'),
            const KelengkapanItem(label: 'Buku Manual'),
            const KelengkapanItem(label: 'Ban Serep'),
            const KelengkapanItem(label: 'BPKB'),
            const KelengkapanItem(label: 'Dongkrak'),
            const KelengkapanItem(label: 'Toolkit'),
            const KelengkapanItem(label: 'No Rangka'),
            const KelengkapanItem(label: 'No Mesin'),

            const SizedBox(height: 30),

            Row(
              children: [
                        Expanded(child: Prev()),
                        SizedBox(width: 10),
                        Expanded(child: Next(location: Page4()))
                      ],
                  ),
                ]),

            ),
      ),
        );


  }
}