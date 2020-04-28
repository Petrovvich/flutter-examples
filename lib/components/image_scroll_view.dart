import 'package:flutter/material.dart';
import 'package:flutter_simple_app/components/resized_asset_image.dart';
import 'package:flutter_simple_app/constants/images_constants.dart';

class ImageScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _elementSize = MediaQuery.of(context).size.width / 4;
    return Container(
      height: _elementSize,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ResizedAssetImage(
            APPLE_TREE_IMG,
            EdgeInsets.only(right: 14.0),
            _elementSize,
            _elementSize,
          ),
          ResizedAssetImage(
            GRAPES_TREE_IMG,
            EdgeInsets.only(right: 14.0),
            _elementSize,
            _elementSize,
          ),
          ResizedAssetImage(
            LEMON_TREE_IMG,
            EdgeInsets.only(right: 14.0),
            _elementSize,
            _elementSize,
          ),
          ResizedAssetImage(
            WATERMELON_TREE_IMG,
            EdgeInsets.only(right: 7.0),
            _elementSize,
            _elementSize,
          ),
          ResizedAssetImage(
            WHEAT_IMG,
            EdgeInsets.only(left: 7.0),
            _elementSize,
            _elementSize,
          ),
        ],
      ),
    );
  }
}