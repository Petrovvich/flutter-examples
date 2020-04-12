import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_app/constants/assets_image_constants.dart';
import 'package:flutter_simple_app/constants/text_constants.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainState();
}

class _MainState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MAIN_BACKGROUND_IMG),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Color(0xBF00A660),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(100, 100, 100, 0),
                  child: Text(
                    WELCOME_TEXT,
                    style: TextStyle(
                        fontSize: 20, color: Colors.white, letterSpacing: 1.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(50, 30, 50, 30),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 70,
                        height: 70,
                        child: Image(
                          image: AssetImage(MAIN_LOGO_IMG),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          'PlanetEarth',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
