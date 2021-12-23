part of 'viewproduct_bloc.dart';

@immutable
abstract class ViewproductState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ViewproductInitial extends ViewproductState {}

class ProductListingState extends ViewproductState {
  ProductListingState({required this.data});

  @override
  List<Object?> get props => [data];

  // List<Product> data;
  List<Product> data;
}
