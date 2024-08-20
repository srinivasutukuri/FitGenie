import 'package:flutter/material.dart';
import 'package:idcard/constants/colors.dart';

class Buttonview extends StatelessWidget {
  const Buttonview({super.key, required this.title, this.backgroundcolor, this.padding, this.ontap, this.textcolor = AppColors.blue});

  final Color? backgroundcolor;
  final String title;
  final VoidCallback? ontap;
  final EdgeInsetsGeometry? padding;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(8888),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: textcolor),
        ),
      ),
    );
  }
}
