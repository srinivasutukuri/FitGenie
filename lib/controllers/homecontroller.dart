import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:idcard/constants/enums.dart';
import 'package:idcard/models/Appointmentmodel.dart';
import 'package:idcard/models/assesstmentmodel.dart';
import 'package:idcard/models/routines_model.dart';

import '../models/challengemodel.dart';

class HomeProvider extends ChangeNotifier {
  bool isloading = false;
  PageController pageController = PageController();
  void load({bool? load}) {
    if (load == null) {
      isloading = !isloading;
    } else {
      isloading = load;
    }
    notifyListeners();
  }

  static HomeTabs _isassessments = HomeTabs.assessments;
  HomeTabs get activeTab => _isassessments;
  void changeTab({required HomeTabs tabName}) {
    _isassessments = tabName;
    notifyListeners();
  }

  List<AssessmentModel> lstassessments = [];
  List<ChallengeModel> lstchallenges = [];
  List<RoutinesModel> lstroutens = [];
  List<AppontmentModel> lstappointments = [];

  Future getData() async {
    try {
      FirebaseFirestore.instance.collection("assessments").get().then((v) {
        lstassessments = List.from(v.docs.map((e) => AssessmentModel.fromJson(e.data())));
        notifyListeners();
      });
      FirebaseFirestore.instance.collection("challenges").get().then((v) {
        lstchallenges = List.from(v.docs.map((e) => ChallengeModel.fromJson(e.data())));
        notifyListeners();
      });
      FirebaseFirestore.instance.collection("routines").get().then((v) {
        lstroutens = List.from(v.docs.map((e) => RoutinesModel.fromJson(e.data())));
        notifyListeners();
      });

      FirebaseFirestore.instance.collection("appointments").get().then((v) {
        lstappointments = List.from(v.docs.map((e) => AppontmentModel.fromJson(e.data())));
        notifyListeners();
      });
    } catch (e) {
      print('Error getting assessments: $e');
      return [];
    }
  }
}
