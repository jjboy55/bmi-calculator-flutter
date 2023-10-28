import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff04040C),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff04040C)),
        scaffoldBackgroundColor: Color(0xff04040C),
        //     textTheme: TextTheme(bodyMedium:TextStyle(color: Colors.white) )
      ),
      home: InputPage(),
    );
  }
}
