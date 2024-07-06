import 'package:bmi_calculator/inputPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(  
       appBarTheme: AppBarTheme(color: Color(0xFF090C22)) ,
       scaffoldBackgroundColor: Color(0xFF090C22)
      ),
      debugShowCheckedModeBanner: false,
      home: Inputpage(),
    );
  }
}

