import 'package:flutter/material.dart';
import 'package:idcard/common/shapes/Buttons/buttons.dart';
import 'package:idcard/constants/colors.dart';
import 'package:idcard/controllers/homecontroller.dart';
import 'package:idcard/views/homescreen/widgets/assessmentwidget.dart';
import 'package:provider/provider.dart';

class MyAssessments extends StatelessWidget {
  const MyAssessments({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, index) {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: AppColors.lightestGray,
        ),
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: provider.lstassessments.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            if (index == 2) {
              return const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Buttonview(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    textcolor: AppColors.white,
                    title: "View All",
                    backgroundcolor: AppColors.deepNavyBlue,
                  ),
                ],
              );
            }
            return Assessmentwidget(
              index: index,
            );
          },
        ),
      );
    });
  }
}
