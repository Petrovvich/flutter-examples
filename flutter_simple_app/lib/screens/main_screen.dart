import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_app/components/image_scroll_view.dart';
import 'package:flutter_simple_app/components/main_background.dart';
import 'package:flutter_simple_app/components/main_button_more.dart';
import 'package:flutter_simple_app/components/main_header.dart';
import 'package:flutter_simple_app/components/main_text_label.dart';
import 'package:flutter_simple_app/components/main_weather_widget.dart';
import 'package:flutter_simple_app/components/panel_scroll_view.dart';

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
                      height: 20.0,
                    ),
                    MainTextLabel('Gallery', 18.0),
                    SizedBox(
                      height: 20.0,
                    ),
                    ImageScrollView(),
                    SizedBox(
                      height: 20.0,
                    ),
                    MainTextLabel('Trending Diseases', 18.0),
                    SizedBox(
                      height: 20.0,
                    ),
                    PanelsScrollView(),
                    SizedBox(
                      height: 20.0,
                    ),
                    MainTextLabel('Best crop to plant', 18.0),
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