import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'addproduct_event.dart';
part 'addproduct_state.dart';

class AddproductBloc extends Bloc<AddproductEvent, AddproductState> {
  AddproductBloc() : super(AddproductInitial()) {
    on<AddproductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
