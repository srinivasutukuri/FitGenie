import 'package:flutter/material.dart';
import 'package:idcard/constants/colors.dart';

class TaskProgressIndicator extends StatelessWidget {
  final int totalTasks;
  final int completedTasks;

  const TaskProgressIndicator({
    super.key,
    required this.totalTasks,
    required this.completedTasks,
  });

  @override
  Widget build(BuildContext context) {
    double progressValue = completedTasks / totalTasks;
    return LinearProgressIndicator(
      value: progressValue,
      borderRadius: BorderRadius.circular(10),
      backgroundColor: AppColors.white,
      valueColor: const AlwaysStoppedAnimation(AppColors.pink),
      minHeight: 10,
    );
  }
}
