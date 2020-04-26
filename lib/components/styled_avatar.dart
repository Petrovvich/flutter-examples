import 'package:flutter/material.dart';

class StyledAvatar extends StatelessWidget {
  final Color _color;
  final Icon _icon;

  StyledAvatar(this._color, this._icon);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 23.0,
      backgroundColor: _color,
      child: _icon,
    );
  }
}
