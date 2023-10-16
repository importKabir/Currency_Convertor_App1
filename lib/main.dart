// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:my_first_app/currency_converter_homepage.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const CurrencyConvertorHomepage(),
    );
  }
}
