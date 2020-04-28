import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_app/components/resized_asset_image.dart';
import 'package:flutter_simple_app/constants/images_constants.dart';

class ImageScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 4,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ResizedAssetImage(APPLE_TREE_IMG),
          ResizedAssetImage(GRAPES_TREE_IMG),
          ResizedAssetImage(LEMON_TREE_IMG),
          ResizedAssetImage(WATERMELON_TREE_IMG),
          ResizedAssetImage(WHEAT_IMG),
        ],
      ),
    );
  }
}