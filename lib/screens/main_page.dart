import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_app/components/facebook_login_button.dart';
import 'package:flutter_simple_app/components/label_text.dart';
import 'package:flutter_simple_app/constants/assets_image_constants.dart';
import 'package:flutter_simple_app/constants/text_constants.dart';
import 'package:flutter_simple_app/screens/style_constants.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainState();
}

class _MainState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(MAIN_BACKGROUND_IMG),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              color: Color(0xBF3E985E),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(100, 100, 100, 0),
                      child: Text(
                        WELCOME_TEXT,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            letterSpacing: 1.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 30, 50, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 70,
                            height: 70,
                            child: Image(
                              image: AssetImage(MAIN_LOGO_IMG),
                              fit: BoxFit.scaleDown,
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
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FacebookLoginButton(),
                          SizedBox(
                            height: 30.0,
                          ),
                          LabelText('Email'),
                          TextField(
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.0,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Enter your email",
                              hintStyle: TextStyle(color: Colors.white60),
                              fillColor: Colors.white,
                              focusedBorder: kStyledUnderline,
                              enabledBorder: kStyledUnderline,
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          LabelText('Password'),
                          TextField(
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.0,
                            ),
                            decoration: InputDecoration(
                              hintText: "Enter your password",
                              hintStyle: TextStyle(color: Colors.white60),
                              fillColor: Colors.white,
                              focusedBorder: kStyledUnderline,
                              enabledBorder: kStyledUnderline,
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}