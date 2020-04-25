import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  final String _text;

  LabelText(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(color: Colors.white, fontSize: 12.0),
    );
  }
}
