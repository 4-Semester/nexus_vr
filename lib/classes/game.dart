class Game {
  int id;
  String title;
  String imageURL;
  String description;

  Game({
    required this.id,
    required this.title,
    required this.imageURL,
    required this.description,
  });

  factory Game.fromJson(Map<String, dynamic> json) => Game(
        id: json["id"],
        title: json["title"],
        imageURL: json["imageURL"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "imageURL": imageURL,
        "description": description,
      };
}
