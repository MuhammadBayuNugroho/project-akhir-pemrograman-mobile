class FavoritesModel {
  final int id;
  final String title;
  final String price;
  final String imageUrl;

  FavoritesModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.imageUrl});

  factory FavoritesModel.fromJson(Map<String, dynamic> json) {
    return FavoritesModel(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        imageUrl: json['image_url']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'price': price, 'image_url': imageUrl};
  }
}
