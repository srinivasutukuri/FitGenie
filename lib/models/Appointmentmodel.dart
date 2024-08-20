class AppontmentModel {
  String image;
  String background;
  String title;

  AppontmentModel({
    required this.image,
    required this.background,
    required this.title,
  });

  factory AppontmentModel.fromJson(Map<String, dynamic> json) => AppontmentModel(
        image: json["image"],
        background: json["background"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "background": background,
        "title": title,
      };
}
