import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'updateuser_event.dart';
part 'updateuser_state.dart';

class UpdateuserBloc extends Bloc<UpdateuserEvent, UpdateuserState> {
  UpdateuserBloc() : super(UpdateuserInitial()) {
    on<UpdateuserEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
