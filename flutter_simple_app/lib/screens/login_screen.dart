import 'package:flutter/material.dart';
import 'package:flutter_simple_app/components/facebook_login_button.dart';
import 'package:flutter_simple_app/components/label_text.dart';
import 'package:flutter_simple_app/constants/images_constants.dart';
import 'package:flutter_simple_app/constants/style_constants.dart';
import 'package:flutter_simple_app/constants/text_constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(MAIN_BACKGROUND_IMG),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Container(
              color: Color(0xBF3E985E),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
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
                              'Company',
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
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                ButtonTheme(
                                  height: 50.0,
                                  buttonColor: Colors.white,
                                  child: RaisedButton(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(letterSpacing: 0.5),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/main');
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Dont have an account?',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  'REGISTER NOW',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.yellow),
                                )
                              ],
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