import 'package:flutter/material.dart';

class CurrencyConvertorHomepage extends StatefulWidget {
  const CurrencyConvertorHomepage({super.key});

  @override
  State<CurrencyConvertorHomepage> createState() =>
      _CurrencyConvertorHomepageState();
}

class _CurrencyConvertorHomepageState extends State<CurrencyConvertorHomepage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 83;
    });
  }

  @override
  Widget build(BuildContext context) {
    const borders = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 252, 162, 17),
        width: 2.5,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Colors.lime),
        elevation: 10,
        shadowColor: const Color(0xFF603FB5),
        title: const Text(
          'Currency Converter',
          style: TextStyle(
            color: Color.fromARGB(255, 128, 0, 128),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 20, 33, 61),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '₹ ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(212, 212, 212, 0.995),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 177, 177, 177),
                  ),
                  prefixIcon: Icon(Icons.monetization_on_sharp),
                  prefixIconColor: Color.fromARGB(255, 252, 162, 17),
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  focusedBorder: borders,
                  enabledBorder: borders,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: convert,
                style: ElevatedButton.styleFrom(
                  elevation: (10),
                  backgroundColor: (Colors.lime),
                  foregroundColor: const Color(0xFF603FB5),
                  minimumSize: const Size(double.infinity - 50, 50),
                  shadowColor: const Color(0xFF603FB5),
                ),
                child: const Text('Convert'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
