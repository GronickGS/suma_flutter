import 'package:app_sum/suma.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // rama Ros
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Suma',
      debugShowCheckedModeBanner: false,
      home: SumaPage());
  }
}

