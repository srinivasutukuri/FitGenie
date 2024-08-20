class RoutinesModel {
  String bodyType;
  String dif;
  String title;
  String category;
  String image;

  RoutinesModel({
    required this.bodyType,
    required this.dif,
    required this.title,
    required this.category,
    required this.image,
  });

  factory RoutinesModel.fromJson(Map<String, dynamic> json) =>
      RoutinesModel(bodyType: json["bodyType"], dif: json["dif"], title: json["title"], category: json["category"], image: json["image"]);

  Map<String, dynamic> toJson() => {
        "bodyType": bodyType,
        "dif": dif,
        "title": title,
        "category": category,
        "image": image,
      };
}
