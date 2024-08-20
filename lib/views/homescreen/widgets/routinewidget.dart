import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:idcard/constants/colors.dart';
import 'package:idcard/controllers/homecontroller.dart';
import 'package:idcard/models/routines_model.dart';
import 'package:provider/provider.dart';

class Workroutinewidget extends StatelessWidget {
  const Workroutinewidget({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, _) {
      RoutinesModel data = provider.lstroutens[index];
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.lightGray,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.paleOrange,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: data.image,
                  )),
            ),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                children: [
                  Text(
                    data.title,
                    style: const TextStyle(fontSize: 16, color: AppColors.darkGray),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    data.bodyType,
                    style: const TextStyle(fontSize: 13, color: AppColors.mediumGray),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.lightGray,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      data.dif,
                      style: const TextStyle(fontSize: 10, color: AppColors.blue),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text.rich(TextSpan(children: [
                    const TextSpan(
                      text: "Difficulty : ",
                      style: TextStyle(fontSize: 12, color: AppColors.mediumGray),
                    ),
                    TextSpan(
                        text: data.dif,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.pink,
                        ))
                  ]))
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
