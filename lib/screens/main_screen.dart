import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_app/components/image_scroll_view.dart';
import 'package:flutter_simple_app/components/main_background.dart';
import 'package:flutter_simple_app/components/main_button_more.dart';
import 'package:flutter_simple_app/components/main_header.dart';
import 'package:flutter_simple_app/components/main_weather_widget.dart';

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
          SingleChildScrollView(
            child: SafeArea(
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
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Gallery',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ImageScrollView(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}