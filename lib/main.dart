import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        backgroundColor: Color(0xFF0A0C22),
        scaffoldBackgroundColor: Color(0xFF0A0C22),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0C22),
        ),
      ),
      home: InputPage(),
    );
  }
}
