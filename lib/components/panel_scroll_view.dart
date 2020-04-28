import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_app/components/resized_asset_image.dart';
import 'package:flutter_simple_app/constants/images_constants.dart';

class PanelsScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(5.0, 5.0, 20.0, 5.0),
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                new BoxShadow(
                  color: Color(0XFFe0e0de),
                  blurRadius: 8.0,

                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                ResizedAssetImage(
                  WATERMELON_TREE_IMG,
                  EdgeInsets.only(left: 12.0),
                  65.0,
                  65.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'African Mole Cricket',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 25.0,
                        width: 82.0,
                        child: FlatButton.icon(
                          onPressed: () {},
                          color: Color(0xFFF1F2FD),
                          icon: Icon(
                            Icons.gps_not_fixed,
                            size: 12.0,
                            color: Colors.black,
                          ),
                          label: Text(
                            'Insect',
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.0),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5.0, 5.0, 20.0, 5.0),
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                new BoxShadow(
                  color: Color(0XFFe0e0de),
                  blurRadius: 8.0,

                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                ResizedAssetImage(
                  WATERMELON_TREE_IMG,
                  EdgeInsets.only(left: 12.0),
                  65.0,
                  65.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'African Mole Cricket',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 25.0,
                        width: 82.0,
                        child: FlatButton.icon(
                          onPressed: () {},
                          color: Color(0xFFF1F2FD),
                          icon: Icon(
                            Icons.gps_not_fixed,
                            size: 12.0,
                            color: Colors.black,
                          ),
                          label: Text(
                            'Insect',
                            style:
                            TextStyle(color: Colors.black, fontSize: 12.0),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//RaisedButton.icon(
//onPressed: () {},
//color: Color(0xFF009856),
//icon: Icon(
//Icons.gps_not_fixed,
//size: 12.0,
//color: Colors.white,
//),
//label: Text(
//'Moscow',
//style: TextStyle(color: Colors.white),
//),
//shape: RoundedRectangleBorder(
//borderRadius:
//BorderRadius.all(Radius.circular(20.0))),
//)
