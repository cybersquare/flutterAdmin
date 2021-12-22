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
    required this.imageController,
    required this.imagename,
    required this.mimeType,
  });
  final String productTitle;
  final String productId;
  final String description;
  final double price;
  final int quantity;
  final String status;
  final io.File imageController;
  final String imagename;
  final String? mimeType;
}

class ClearFormEvent extends AddproductEvent {}
