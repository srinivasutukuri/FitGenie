import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:idcard/common/shapes/Buttons/paybutton.dart';

import 'package:idcard/constants/colors.dart';
import 'package:idcard/constants/styles.dart';
import 'package:idcard/controllers/homecontroller.dart';
import 'package:idcard/models/assesstmentmodel.dart';
import 'package:idcard/views/assesmentdetailsscreen/assessmentdetailsscreen.dart';
import 'package:provider/provider.dart';

class Assessmentwidget extends StatelessWidget {
  const Assessmentwidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, _) {
      AssessmentModel data = provider.lstassessments[index];
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Assessmentdetailsscreen(
                        index: index,
                      )));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(18)),
            color: AppColors.white,
          ),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                ),
                child: Container(
                  alignment: Alignment.center,
                  color: AppColors.orange,
                  child: CachedNetworkImage(
                    height: 140,
                    imageUrl: data.image,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.title,
                        maxLines: 2,
                        style: TextStyle(fontSize: 16, color: AppColors.navyBlue),
                      ),
                      SizedBox(height: 10),
                      Text(
                        data.body,
                        style: TextStyle(height: 1.5, fontFamily: poppins, fontSize: 12.5, color: AppColors.darkGray),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Playbutton(title: "Start"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
