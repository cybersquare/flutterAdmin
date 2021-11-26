// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';


Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
    Product({
       required this.productId,
        required this.productTitle,
        required this.description,
        required this.price,
        required this.quantity,
        required this.status,
        required this.image,
    });

    dynamic? productId;
    dynamic? productTitle;
    dynamic? description;
    dynamic? price;
    dynamic? quantity;
    dynamic? status;
    dynamic? image;

    factory Product.fromJson(dynamic json) => Product(
        productId: json['product id'],
        productTitle: json['product title'] as String,
        description: json['description'] as String,
        price: json['price'] as String,
        quantity: json['quantity'] as String,
        status: json['status'] as String,
        image: json['image'] as String,
    );

    Map<String, dynamic> toJson() => <String, dynamic>{
        'product id': productId,
        'product title': productTitle,
        'description': description,
        'price': price,
        'quantity': quantity,
        'status': status,
        'image': image,
    };
}
