import 'package:flutter/material.dart';
import 'package:idcard/common/Appbar/appbar.dart';
import 'package:idcard/constants/colors.dart';
import 'package:idcard/constants/enums.dart';
import 'package:idcard/controllers/homecontroller.dart';
import 'package:idcard/views/homescreen/pageviews/my_assessments.dart';
import 'package:idcard/views/homescreen/widgets/lableslider.dart';
import 'package:provider/provider.dart';
import '../../common/Text/headline.dart';
import 'pageviews/my_appointments.dart';
import 'widgets/challengewidget.dart';
import 'widgets/routinewidget.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((e) {
      context.read<HomeProvider>().getData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: AppColors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Appbar(),
              const SizedBox(height: 20),
              const Lableslider(),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      switch (provider.activeTab) {
                        HomeTabs.assessments => const MyAssessments(),
                        HomeTabs.appointments => const MyAppointments(),
                      },
                      const SizedBox(height: 20),
                      const Headline(
                        title: "Challenges",
                      ),
                      const SizedBox(height: 10),
                      if (provider.lstchallenges.isNotEmpty) const Challengeswidgets(index: 0),
                      const SizedBox(height: 20),
                      const Headline(title: "Workout Routines"),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 150,
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 10);
                          },
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: provider.lstroutens.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Workroutinewidget(
                              index: index,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
