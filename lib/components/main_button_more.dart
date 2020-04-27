import 'package:flutter/material.dart';
import 'package:flutter_simple_app/components/styled_avatar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainButtonMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ButtonTheme(
          height: 60.0,
          buttonColor: Color(0xFF00A660),
          child: RaisedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                StyledAvatar(
                  Color(0xFF009856),
                  Icon(
                    MdiIcons.corn,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Diagnosis issues with crop',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  MdiIcons.arrowRight,
                  color: Colors.white,
                  size: 20.0,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
