import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'viewproduct_event.dart';
part 'viewproduct_state.dart';

class ViewproductBloc extends Bloc<ViewproductEvent, ViewproductState> {
  ViewproductBloc() : super(ViewproductInitial()) {
    on<ViewproductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
