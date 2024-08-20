import 'package:flutter/material.dart';
import 'package:idcard/common/shapes/Buttons/buttons.dart';
import 'package:idcard/constants/colors.dart';
import 'package:idcard/controllers/homecontroller.dart';
import 'package:idcard/views/homescreen/widgets/appointmentoptin.dart';
import 'package:provider/provider.dart';

class MyAppointments extends StatelessWidget {
  const MyAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Consumer<HomeProvider>(builder: (context, provider, _) {
        return Column(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.lightestGray,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: provider.lstappointments.length,
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1 / .9,
                      ),
                      itemBuilder: (context, index) {
                        return Appontoptionswidget(
                          index: index,
                          size: size,
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    const Row(
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
                    ),
                  ],
                )),
          ],
        );
      }),
    );
  }
}
