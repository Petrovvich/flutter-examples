import 'package:flutter/material.dart';

class MainBackground extends StatelessWidget {
  const MainBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color(0xFFF9F8FD),
        ),
        Container(
          padding: EdgeInsets.only(top: 160.0),
          height: 160.0,
          color: Color(0xFF00A660),
        ),
      ],
    );
  }
}
