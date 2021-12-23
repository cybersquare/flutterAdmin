part of 'updateproduct_bloc.dart';

@immutable
abstract class UpdateproductEvent {}

class DropDownEvent extends UpdateproductEvent {
  DropDownEvent({required this.isActive}) {
    // print("dropdown event created");
  }
  final bool isActive;
}

class LoadUpdateProductDetailsEvent extends UpdateproductEvent {
  LoadUpdateProductDetailsEvent({required this.productId}) {
    // print('haiiiiiiiiiiiiiiii');
  }
  final Object? productId;
}

class UpdateProductPushToDatabaseEvent extends UpdateproductEvent {
  UpdateProductPushToDatabaseEvent({
    required this.productName,
    required this.price,
    required this.description,
    required this.quantity,
  });
  String productName;
  String price;
  String description;
  String quantity;
}
