import 'package:flutter/material.dart';
import 'package:dart_calculator/form/calculator_form.dart';

class Calculator extends StatelessWidget {
  final TextTheme _appBarText = new TextTheme(headline: new TextStyle(color: Colors.white));

  final String title;

  Calculator({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        textTheme: _appBarText,
      ),
      body: CalculatorForm(),
    );
  }
}
