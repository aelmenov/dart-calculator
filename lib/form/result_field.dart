import 'package:flutter/material.dart';

class ResultField extends StatelessWidget {
  final String result;

  final _textStyle = TextStyle(color: Color(0xFF383838), fontSize: 52, fontWeight: FontWeight.w300);

  ResultField({this.result}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            result,
            textAlign: TextAlign.right,
            style: _textStyle
          )
        ]
      )
    );
  }
}