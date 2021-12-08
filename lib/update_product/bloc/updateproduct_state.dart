part of 'updateproduct_bloc.dart';

@immutable
abstract class UpdateproductState {}

class UpdateproductInitial extends UpdateproductState {}

class UpdateDropDownState extends UpdateproductState {
  UpdateDropDownState({required this.showActive});
  final bool showActive;
}
