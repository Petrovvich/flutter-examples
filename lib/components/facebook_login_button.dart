import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class FacebookLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: RaisedButton(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'f',
                style: TextStyle(
                  fontSize: 20.0,
                  color: FACEBOOK_COLOR,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'JosefinSans',
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Login with facebook',
                style: TextStyle(
                  color: FACEBOOK_COLOR,
                ),
              ),
            ],
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/main');
        },
      ),
    );
  }
}
