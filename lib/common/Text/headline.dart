import 'package:flutter/material.dart';
import 'package:idcard/common/images/icons/circularicon.dart';
import 'package:idcard/constants/colors.dart';
import 'package:idcard/constants/styles.dart';

class Headline extends StatelessWidget {
  const Headline({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontFamily: poppins, fontSize: 17, color: AppColors.darkGray),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "View All",
              style: TextStyle(fontFamily: poppins, fontSize: 17, color: AppColors.darkGray, decoration: TextDecoration.underline),
            ),
            SizedBox(width: 10),
            Circularicon(
              padding: 5,
              icon: Icons.arrow_forward,
              iconColor: AppColors.almostWhite,
              bgcolor: AppColors.deepNavyBlue,
            ),
          ],
        )
      ],
    );
  }
}
