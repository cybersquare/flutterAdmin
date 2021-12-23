part of 'viewproduct_bloc.dart';

@immutable
abstract class ViewproductEvent extends Equatable {
  const ViewproductEvent();
  @override
  List<Object?> get props => [];
}

class ProductListingEvent extends ViewproductEvent {}
