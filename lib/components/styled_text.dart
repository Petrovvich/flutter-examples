import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String _text;
  final TextStyle _style;

  StyledText(this._text, this._style);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: _style,
    );
  }
}
