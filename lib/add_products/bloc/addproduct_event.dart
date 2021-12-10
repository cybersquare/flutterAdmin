part of 'addproduct_bloc.dart';

@immutable
abstract class AddproductEvent {}

class ProductAddingEvent extends AddproductEvent {
  ProductAddingEvent({
    required this.productTitle,
    required this.productId,
    required this.description,
    required this.price,
    required this.quantity,
    required this.status,
  });
  String productTitle;
  String productId;
  String description;
  double price;
  int quantity;
  String status;
}

class ClearFormEvent extends AddproductEvent {}
