// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

// Products productsFromJson(String str) => Products.fromJson(json.decode(str));

// String productsToJson(Products data) => json.encode(data.toJson());

class ProductsModel {
  ProductsModel({
    @required this.title,
    @required this.stock,
    @required this.status,
    @required this.price,
    @required this.vendor,
    @required this.picture,
  });

  dynamic? title;
  dynamic? stock;
  dynamic? status;
  dynamic? price;
  dynamic? vendor;
  dynamic? picture;

  // factory Products.fromJson(dynamic json) => Products(
  //       title: json["title"],
  //       stock: json["stock"],
  //       status: json["status"],
  //       price: json["price"],
  //       vendor: json["vendor"],
  //       picture: json["picture"],
  //     );

  // Map<String, dynamic> toJson() => {
  //     "title": title,
  //     "stock": stock,
  //     "status": status,
  //     "price": price,
  //     "vendor": vendor,
  //     "picture": picture,
  // };
}
