import 'package:flutter/material.dart';

class Circularicon extends StatelessWidget {
  const Circularicon({
    super.key,
    required this.icon,
    this.height,
    this.width,
    this.bgcolor,
    this.iconColor,
    this.padding = 0,
    this.fit = BoxFit.fill,
  });

  final double? height, width;
  final double padding;
  final Color? bgcolor, iconColor;
  final IconData icon; // The icon to be displayed inside the circular container
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: bgcolor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon, // Use the icon passed in the constructor
        color: iconColor,
      ),
    );
  }
}
