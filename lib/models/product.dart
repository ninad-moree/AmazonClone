// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Product {
  final String name;
  final String description;
  final int qty;
  final List<String> images;
  final String category;
  final double price;
  String? id;

  Product({
    required this.name,
    required this.description,
    required this.qty,
    required this.images,
    required this.category,
    required this.price,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'qty': qty,
      'images': images,
      'category': category,
      'price': price,
      'id': id,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] as String,
      description: map['description'] as String,
      qty: map['qty'] as int,
      images: List<String>.from(
          map['images'] as List<String>), // Removed unnecessary parentheses
      category: map['category'] as String,
      price: map['price'] as double,
      id: map['_id'] != null
          ? map['_id'] as String
          : null, // Corrected 'id' to '_id'
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
