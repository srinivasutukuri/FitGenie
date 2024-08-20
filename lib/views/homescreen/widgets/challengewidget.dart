import 'package:flutter/material.dart';
import 'package:idcard/common/shapes/Buttons/buttons.dart';
import 'package:idcard/common/shapes/Buttons/paybutton.dart';
import 'package:idcard/constants/colors.dart';
import 'package:idcard/constants/images.dart';
import 'package:idcard/constants/styles.dart';
import 'package:idcard/controllers/homecontroller.dart';
import 'package:idcard/models/challengemodel.dart';
import 'package:idcard/utils/themes/componds/progressindicater.dart';
import 'package:provider/provider.dart';

class Challengeswidgets extends StatelessWidget {
  const Challengeswidgets({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, _) {
        ChallengeModel data = provider.lstchallenges[index];
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.mintGreen,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.date,
                        style: const TextStyle(fontFamily: poppins, fontSize: 15, color: AppColors.teal),
                      ),
                      const SizedBox(height: 10),
                      const Buttonview(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                        title: "Push Up 20x",
                        backgroundcolor: AppColors.teal,
                        textcolor: AppColors.white,
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: TaskProgressIndicator(
                          completedTasks: data.conpleted,
                          totalTasks: data.total,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "${data.conpleted}/${data.total} Complete",
                        style: const TextStyle(fontFamily: poppins, fontSize: 14, color: AppColors.charcoalGray),
                      ),
                      const SizedBox(height: 20),
                      const Playbutton(
                        title: "Continue   ",
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      )
                    ],
                  ),
                ),
                const Expanded(
                  flex: 6,
                  child: Image(
                    image: AssetImage(cha1),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
