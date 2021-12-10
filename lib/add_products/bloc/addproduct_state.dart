part of 'addproduct_bloc.dart';

@immutable
abstract class AddproductState {}

class AddproductInitial extends AddproductState {}

class ProductUploadState extends AddproductState {}

class ProductUploadFailedState extends AddproductState {}

class ClearFormState extends AddproductState {}
