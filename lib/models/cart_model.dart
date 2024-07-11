class CartModel {
  final int id;
  final String title;
  final String price;
  final String imageUrl;

  CartModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.imageUrl});

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        imageUrl: json['image_url']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'price': price, 'image_url': imageUrl};
  }
}
