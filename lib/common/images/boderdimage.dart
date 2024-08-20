import 'package:flutter/material.dart';

class Boderedimage extends StatelessWidget {
  const Boderedimage({
    super.key,
    required this.url,
    this.bgcolor,
    this.hight,
    this.wigth,
    this.carveradius = 20,
  });
  final String url;
  final double? hight, wigth;
  final Color? bgcolor;
  final double carveradius;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(carveradius),
          topLeft: Radius.circular(carveradius),
          topRight: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: Image(
        image: AssetImage(url),
        fit: BoxFit.contain,
      ),
    );
  }
}
