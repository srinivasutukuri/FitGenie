import 'package:flutter/material.dart';
import 'package:idcard/constants/colors.dart';

class Circularimage extends StatelessWidget {
  const Circularimage({
    super.key,
    required this.url,
    this.hight,
    this.width,
    this.backroundcolor,
    this.padding = 5,
    this.fit = BoxFit.fill,
    this.showbroder = false,
    this.margin,
  });
  final double? hight, width;
  final double padding;
  final Color? backroundcolor;
  final String url;
  final BoxFit? fit;
  final bool showbroder;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: EdgeInsets.all(padding),
      height: hight,
      width: width,
      decoration: BoxDecoration(
        color: backroundcolor,
        border: showbroder ? Border.all(color: AppColors.veryLightGray) : null,
        shape: BoxShape.circle,
      ),
      child: Image(
        image: AssetImage(url),
        fit: BoxFit.fill,
      ),
    );
  }
}
