import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'allproducts_event.dart';
part 'allproducts_state.dart';

class AllproductsBloc extends Bloc<AllproductsEvent, AllproductsState> {
  AllproductsBloc() : super(AllproductsInitial()) {
    on<AllproductsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
