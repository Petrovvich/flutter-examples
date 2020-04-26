import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hello, Alex',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "It's a sunny day!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              RaisedButton.icon(
                onPressed: () {},
                color: Color(0xFF009856),
                icon: Icon(
                  Icons.gps_not_fixed,
                  color: Colors.white,
                ),
                label: Text(
                  'Moscow',
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
