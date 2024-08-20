import 'package:flutter/material.dart';
import 'package:idcard/common/images/circularimage.dart';
import 'package:idcard/constants/colors.dart';
import 'package:idcard/constants/images.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Hello Jane",
            maxLines: 1,
            style: TextStyle(
              fontSize: 25,
              color: AppColors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(2),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.gray),
              shape: BoxShape.circle,
            ),
            child: const Circularimage(
              width: 20,
              url: personicon,
              backroundcolor: AppColors.gray,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
