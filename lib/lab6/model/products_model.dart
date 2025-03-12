import 'dart:convert';

class ProductsModel{
  final List<Product> products;
  final int total;
  final int skip;
  final int limit;

  ProductsModel({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
});
factory ProductsModel.fromJson(Map<String, dynamic> json) {
  return ProductsModel(
    total: json['total'],
    skip: json['skip'],
    limit: json['limit'],
    products: List<Product>.from(json['products'].map((x) => Product.fromJson(x))),
  );
}

Map<String , dynamic> toJson() =>{
  "products":List<dynamic>.from(products.map((x) => x.toJson())),
  "total":total,
  "skip":skip,
  "limit":limit,
};
}

class Product {
  final int id;
  final String title;
  final String description;
  final String category;
  final String thumbnail;

  final double price;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.thumbnail,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    category: json["category"],
    thumbnail:json["thumbnail"],
    price: json["price"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "category": category,
    "price": price,
    "thumbnail":thumbnail
  };
}


