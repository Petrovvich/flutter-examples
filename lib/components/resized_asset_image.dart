import 'package:flutter/material.dart';

class ResizedAssetImage extends StatelessWidget {
  final String _imagePath;

  const ResizedAssetImage(this._imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          new BoxShadow(
            color: Colors.grey,
            blurRadius: 4.0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          _imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
