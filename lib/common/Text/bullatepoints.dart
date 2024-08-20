import 'package:flutter/material.dart';
import 'package:idcard/constants/colors.dart';

class NumBulletList extends StatelessWidget {
  final List<String> sentences;

  const NumBulletList({super.key, required this.sentences});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: sentences.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${index + 1}. ", // Numbering for each sentence
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: AppColors.black,
                ),
              ),
              Expanded(
                child: Text(
                  sentences[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    color: AppColors.black,
                  ),
                ), // Sentence text
              ),
            ],
          ),
        );
      },
    );
  }
}
