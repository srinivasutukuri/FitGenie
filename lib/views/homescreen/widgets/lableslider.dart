import 'package:flutter/material.dart';
import 'package:idcard/constants/colors.dart';
import 'package:idcard/constants/enums.dart';
import 'package:idcard/constants/styles.dart';
import 'package:idcard/controllers/homecontroller.dart';
import 'package:provider/provider.dart';

class Lableslider extends StatelessWidget {
  const Lableslider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, _) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: AppColors.lightestGray,
          ),
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                HomeTabs.values.length,
                (i) {
                  HomeTabs v = HomeTabs.values[i];
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        provider.changeTab(tabName: v);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(800),
                          color: v != provider.activeTab ? AppColors.lightestGray : AppColors.white,
                        ),
                        child: Text(
                          v.value,
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: poppins,
                            color: v == provider.activeTab ? AppColors.blue : AppColors.gray,
                            fontWeight: v == provider.activeTab ? FontWeight.bold : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),

              // Button(
              //   title: "My Assessments",
              //   backgroundcolor: provider.isassessments
              //       ? AppColors.white
              //       : AppColors.lightestGray,
              //   textcolor:
              //       provider.isassessments ? AppColors.blue : AppColors.gray,
              //   ontap: () {
              //     provider.changetoassesment();
              //   },
              // ),
              // const SizedBox(width: 10),
              // Button(
              //   title: "My Appointments",
              //   width: size.width * .42,
              //   backgroundcolor: provider.isassessments
              //       ? AppColors.lightestGray
              //       : AppColors.white,
              //   textcolor:
              //       provider.isassessments ? AppColors.gray : AppColors.blue,
              //   ontap: () {
              //     provider.changetoapp();
              //   },
              // )
            ],
          ),
        );
      },
    );
  }
}
