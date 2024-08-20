import 'package:flutter/material.dart';
import 'package:idcard/common/images/circularimage.dart';
import 'package:idcard/constants/colors.dart';
import 'package:idcard/constants/images.dart';

class Benifitwidget extends StatelessWidget {
  const Benifitwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 90,
          child: Circularimage(
            margin: EdgeInsets.symmetric(horizontal: 5),
            padding: 20,
            url: heart,
            backroundcolor: AppColors.white,
            showbroder: true,
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: 80,
          child: Text(
            "Key Body Vitals",
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(fontSize: 12, color: AppColors.darkGray),
          ),
        ),
      ],
    );
  }
}
