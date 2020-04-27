import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_app/components/main_background.dart';
import 'package:flutter_simple_app/components/main_button_more.dart';
import 'package:flutter_simple_app/components/main_header.dart';
import 'package:flutter_simple_app/components/main_weather_widget.dart';
import 'package:flutter_simple_app/components/styled_avatar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MainBackground(),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  MainHeader(),
                  SizedBox(
                    height: 30.0,
                  ),
                  MainWeatherWidget(),
                  SizedBox(
                    height: 12.0,
                  ),
                  MainButtonMore(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}