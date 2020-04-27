import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width/4,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            width: MediaQuery.of(context).size.width/4,
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            width: MediaQuery.of(context).size.width/4,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            width: MediaQuery.of(context).size.width/4,
            color: Colors.green,
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            width: MediaQuery.of(context).size.width/4,
            color: Colors.yellow,
          ),
          Container(
            width: MediaQuery.of(context).size.width/4,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
