import 'package:flutter/material.dart';

class NumButton extends StatelessWidget {
  final GlobalKey<FormState> fromKey;
  final int num;
  final void Function(int) callback;

  final _textStyle = TextStyle(color: Color(0xFF383838), fontSize: 28, fontWeight: FontWeight.w300);

  NumButton({this.fromKey, this.num, this.callback}) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(num.toString(), style: _textStyle),
      padding: EdgeInsets.all(12),
      textTheme: ButtonTextTheme.accent,
      color: Color(0xFFD3D3D3),
      shape: CircleBorder(),
      onPressed: () => callback(num),
    );
  }
}