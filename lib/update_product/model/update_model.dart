class UpdateProductModel {
  UpdateProductModel({
    required this.quantity,
    required this.productId,
    required this.price,
    required this.description,
    required this.productName,
    required this.status,
  });

  UpdateProductModel.fromJson(Map<String, dynamic> json) {
    quantity = int.parse(json['quantity'].toString());
    productId = json['productId'].toString();
    price = double.parse(json['price'].toString());
    description = json['description'].toString();
    productName = json['productName'].toString();
    status = json['status'].toString();
  }
  late final int quantity;
  late final String productId;
  late final double price;
  late final String description;
  late final String productName;
  late final String status;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['quantity'] = quantity;
    _data['productId'] = productId;
    _data['price'] = price;
    _data['description'] = description;
    _data['productName'] = productName;
    _data['status'] = status;
    return _data;
  }
}
