part of 'updateproduct_bloc.dart';

@immutable
abstract class UpdateproductEvent {}

class DropDownEvent extends UpdateproductEvent {
  DropDownEvent({required this.isActive}) {
    print("dropdown event created");
  }
  final bool isActive;
}
