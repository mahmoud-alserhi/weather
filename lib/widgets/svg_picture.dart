import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGPicture extends StatelessWidget {
  SVGPicture({Key? key, required this.assetName, this.color, this.width,this.height})
      : super(key: key);

  final String assetName;
  Color? color;
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      matchTextDirection: true,
      height: height,
      width: width,
      color: color,
    );
  }
}
