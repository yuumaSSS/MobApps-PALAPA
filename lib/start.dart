import 'package:flutter/material.dart';
import 'package:palapa_form/pages/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1()
    );
  }
}

// Ini file yang menjadikan page1 sebagai halaman utama, ketika user buka aplikasi mereka akan ke page1.dart
// Ini juga yang membuat agar navigator push aman digunakan, karena prev nya bakalan rusak jika langsung ke page lain