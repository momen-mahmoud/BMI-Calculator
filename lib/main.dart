import 'package:bmi_calculator/database/database.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (context)=> AppDatabase(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    ));
  }
}
