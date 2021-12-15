import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase/firestore.dart';
import 'package:meta/meta.dart';

part 'updateproduct_event.dart';
part 'updateproduct_state.dart';

class UpdateproductBloc extends Bloc<UpdateproductEvent, UpdateproductState> {
  UpdateproductBloc() : super(UpdateDropDownState(showActive: true));
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('Products');

  @override
  Stream<UpdateDropDownState> mapEventToState(UpdateproductEvent event) async* {
    if (event is DropDownEvent) {
      print("dropdown event working");
      // yield UpdateDropDownState(showActive: event.isActive);
      yield UpdateDropDownState(showActive: event.isActive);
    }
    if (event is LoadUpdateProductDetailsEvent) {
      print("test");
      // final result = await collectionReference.doc('1B4rtiZBA5P2CoOkEYp9');
      final result = await collectionReference.get();
      print(result.docs);
      yield UpdateDropDownState(showActive: true);
    }
  }
}
