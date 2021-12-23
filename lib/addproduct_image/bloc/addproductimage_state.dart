part of 'addproductimage_bloc.dart';

@immutable
abstract class AddproductimageState extends Equatable {
  @override
  List<Object> get props => [];
}

class AddproductimageInitial extends AddproductimageState {}

class ProductImageAddedState extends AddproductimageState {
  ProductImageAddedState({
    required this.imagename,
    required this.imagefile,
    required this.mimeType,
  });
  String imagename;
  io.File imagefile;
  String? mimeType;
  @override
  List<Object> get props => [imagefile];
}
