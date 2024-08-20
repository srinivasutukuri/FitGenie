class ChallengeModel {
  String date;
  int total;
  int conpleted;

  ChallengeModel({
    required this.date,
    required this.total,
    required this.conpleted,
  });

  factory ChallengeModel.fromJson(Map<String, dynamic> json) => ChallengeModel(
        date: json["date"],
        total: json["total"],
        conpleted: json["conpleted"],
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "total": total,
        "conpleted": conpleted,
      };
}
