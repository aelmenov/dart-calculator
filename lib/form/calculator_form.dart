import 'package:flutter/material.dart';
import './result_field.dart';
import './num_button.dart';
import './operation_button.dart';

class CalculatorForm extends StatefulWidget {
  @override
  CalculatorFormState createState() {
    return CalculatorFormState();
  }
}

class CalculatorFormState extends State<CalculatorForm> {
  final _formKey = GlobalKey<FormState>();

  String _result = '';

  void _input(int num) {
    this.setState(() {
      _result += num.toString();
    });
  }

  void _action(String operation) { }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            ResultField(result: _result),

            Container(
                margin: EdgeInsets.only(bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    NumButton(fromKey: _formKey, num: 7, callback: _input),
                    NumButton(fromKey: _formKey, num: 8, callback: _input),
                    NumButton(fromKey: _formKey, num: 9, callback: _input),
                    OperationButton(fromKey: _formKey, operation: '\u00F7', callback: _action)
                  ],
                )
            ),

            Container(
                margin: EdgeInsets.only(bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    NumButton(fromKey: _formKey, num: 4, callback: _input),
                    NumButton(fromKey: _formKey, num: 5, callback: _input),
                    NumButton(fromKey: _formKey, num: 6, callback: _input),
                    OperationButton(fromKey: _formKey, operation: '\u00D7', callback: _action)
                  ],
                )
            ),

            Container(
                margin: EdgeInsets.only(bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    NumButton(fromKey: _formKey, num: 1, callback: _input),
                    NumButton(fromKey: _formKey, num: 2, callback: _input),
                    NumButton(fromKey: _formKey, num: 3, callback: _input),
                    OperationButton(fromKey: _formKey, operation: '\u2212', callback: _action)
                  ],
                )
            ),

            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    NumButton(fromKey: _formKey, num: 0, callback: _input),
                    OperationButton(fromKey: _formKey, operation: ',', callback: _action),
                    OperationButton(fromKey: _formKey, operation: '=', callback: _action),
                    OperationButton(fromKey: _formKey, operation: '+', callback: _action)
                  ],
                )
            ),
          ],
        )
      )
    );
  }
}

