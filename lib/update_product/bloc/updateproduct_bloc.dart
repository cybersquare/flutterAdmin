import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'updateproduct_event.dart';
part 'updateproduct_state.dart';

class UpdateproductBloc extends Bloc<UpdateproductEvent, UpdateproductState> {
  UpdateproductBloc() : super(UpdateDropDownState(showActive: true));

  @override
  Stream<UpdateDropDownState> mapEventToState(UpdateproductEvent event) async* {
    if (event is DropDownEvent) {
      print("dropdown event working");
      // yield UpdateDropDownState(showActive: event.isActive);
      emit(UpdateDropDownState(showActive: event.isActive));
    }
  }
}
