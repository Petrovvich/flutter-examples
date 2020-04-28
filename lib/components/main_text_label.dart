import 'package:flutter/material.dart';

class MainTextLabel extends StatelessWidget {
  final String _text;
  final double _fontSize;

  MainTextLabel(this._text, this._fontSize);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          _text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: _fontSize),
        ),
      ],
    );
  }
}