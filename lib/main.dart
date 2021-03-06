import 'package:flutter/material.dart';
import 'screens/inputPage.dart';
import 'screens/results_page.dart';

void main() {
  runApp(BiCal());
}

class BiCal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

