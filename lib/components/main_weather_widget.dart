import 'package:flutter/material.dart';
import 'package:flutter_simple_app/components/styled_avatar.dart';
import 'package:flutter_simple_app/components/styled_text.dart';
import 'package:flutter_simple_app/constants/style_constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainWeatherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          new BoxShadow(
            color: Colors.grey,
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                StyledAvatar(
                  Color(0xFF2ACA85),
                  Icon(
                    MdiIcons.thermometerLow,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    StyledText('62° F', kTextValueStyle),
                    StyledText('Temperature', kTextLabelStyle),
                  ],
                ),
                SizedBox(
                  width: 40.0,
                ),
                StyledAvatar(
                  Color(0xFF2CA6CA),
                  Icon(
                    Icons.opacity,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    StyledText('61%', kTextValueStyle),
                    StyledText('Humidity', kTextLabelStyle),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                StyledAvatar(
                  Color(0xFF9A6FD1),
                  Icon(
                    MdiIcons.weatherRainy,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    StyledText('740.0mm', kTextValueStyle),
                    StyledText('Rainfall', kTextLabelStyle),
                  ],
                ),
                SizedBox(
                  width: 30.0,
                ),
                StyledAvatar(
                  Color(0xFFE9BB16),
                  Icon(
                    MdiIcons.weatherWindy,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    StyledText('3.9m/s', kTextValueStyle),
                    StyledText('WindSpeed', kTextLabelStyle),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
