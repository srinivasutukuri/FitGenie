import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:idcard/constants/colors.dart';
import 'package:idcard/controllers/homecontroller.dart';
import 'package:idcard/models/Appointmentmodel.dart';

import 'package:provider/provider.dart';

class Appontoptionswidget extends StatelessWidget {
  const Appontoptionswidget({
    super.key,
    required this.size,
    required this.index,
  });

  final Size size;
  final int index;

  Color hexToColor(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, _) {
      AppontmentModel data = provider.lstappointments[index];
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: hexToColor(data.background),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: CachedNetworkImage(
                  imageUrl: data.image,
                  height: 80,
                  width: 80,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              data.title,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: AppColors.navyBlue, decoration: TextDecoration.none),
            ),
          ],
        ),
      );
    });
  }
}
