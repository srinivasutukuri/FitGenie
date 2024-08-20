import 'package:flutter/material.dart';
import 'package:idcard/common/images/icons/circularicon.dart';
import 'package:idcard/constants/colors.dart';

class Playbutton extends StatelessWidget {
  const Playbutton({
    super.key,
    required this.title,
    this.padding,
  });
  final String title;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      padding: padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Circularicon(
            padding: 3,
            bgcolor: AppColors.blue,
            icon: Icons.play_arrow,
            iconColor: AppColors.white,
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 17, color: AppColors.blue, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
