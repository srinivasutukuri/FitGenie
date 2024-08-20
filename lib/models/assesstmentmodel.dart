class AssessmentModel {
  List<String> benefits;
  String image;
  List<String> details;
  String title;
  String body;

  AssessmentModel({
    required this.benefits,
    required this.image,
    required this.details,
    required this.title,
    required this.body,
  });

  factory AssessmentModel.fromJson(Map<String, dynamic> json) => AssessmentModel(
        benefits: List<String>.from(json["benefits"].map((x) => x)),
        image: json["image"],
        details: List<String>.from(json["details"].map((x) => x)),
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "benefits": List<dynamic>.from(benefits.map((x) => x)),
        "image": image,
        "details": List<dynamic>.from(details.map((x) => x)),
        "title": title,
        "body": body,
      };
}
