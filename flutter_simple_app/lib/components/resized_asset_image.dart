import 'package:flutter/material.dart';

class ResizedAssetImage extends StatelessWidget {
  final String _imagePath;
  final EdgeInsetsGeometry _margin;
  final double _width;
  final double _height;

  const ResizedAssetImage(
      this._imagePath, this._margin, this._width, this._height);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: _margin,
      width: _width,
      height: _height,
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
