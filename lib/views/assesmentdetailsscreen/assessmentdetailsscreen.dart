import 'package:flutter/material.dart';
import 'package:idcard/common/Text/bullatepoints.dart';
import 'package:idcard/common/shapes/carves/clipper.dart';
import 'package:idcard/constants/colors.dart';
import 'package:idcard/constants/images.dart';
import 'package:idcard/controllers/homecontroller.dart';
import 'package:idcard/models/assesstmentmodel.dart';
import 'package:idcard/views/assesmentdetailsscreen/widgets/benifit.dart';
import 'package:provider/provider.dart';

class Assessmentdetailsscreen extends StatelessWidget {
  const Assessmentdetailsscreen({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Consumer<HomeProvider>(builder: (context, provider, _) {
          AssessmentModel data = provider.lstassessments[index];
          return Column(
            children: [
              ClipPath(
                clipper: ContainerClipper(),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  decoration: const BoxDecoration(color: AppColors.mintGreen),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Health Risk Assessment",
                              style: TextStyle(fontSize: 27, color: AppColors.navyBlue),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                              width: 90,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    height: 20,
                                    image: AssetImage(clockicon),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "4 min",
                                    style: TextStyle(fontSize: 13, color: AppColors.navyBlue),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Image(
                        width: 150,
                        image: AssetImage(bigimage),
                        fit: BoxFit.contain, // Ensure the image fits within the available space
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What do you get?",
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColors.navyBlue,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return const Benifitwidget();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    const Positioned(
                      top: 0,
                      right: 10,
                      child: Image(
                        height: 220,
                        image: AssetImage(ring),
                        fit: BoxFit.contain, // Adjust the image to fit the space
                      ),
                    ),
                    Positioned(
                      top: 110,
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: AppColors.lightGray2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        const Text(
                          "How we do it?",
                          style: TextStyle(fontSize: 17, color: AppColors.navyBlue, fontWeight: FontWeight.bold),
                        ),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Image(
                            image: AssetImage(action),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.ligthgreen),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      height: 20,
                                      image: AssetImage(security),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "We do not store or share your personal data",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: AppColors.gray2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              NumBulletList(
                                sentences: data.details,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Benefits",
                      style: TextStyle(fontSize: 17, color: AppColors.navyBlue, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration:
                            BoxDecoration(color: AppColors.white, border: Border.all(color: AppColors.lightGray2), borderRadius: BorderRadius.circular(20)),
                        child: NumBulletList(sentences: data.benefits))
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
