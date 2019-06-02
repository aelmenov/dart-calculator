import 'package:flutter/material.dart';

class OperationButton extends StatelessWidget {
  final GlobalKey<FormState> fromKey;
  final String operation;
  final void Function(String) callback;

  final _textStyle = TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w300);

  OperationButton({this.fromKey, this.operation, this.callback}) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(operation, style: _textStyle),
      padding: EdgeInsets.all(12),
      textTheme: ButtonTextTheme.accent,
      color: Colors.blue,
      shape: CircleBorder(),
      onPressed: () => callback(operation),
    );
  }
}