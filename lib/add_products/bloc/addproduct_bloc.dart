import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cs_ecomm/add_products/addproduct.dart';
import 'package:cs_ecomm/add_products/view/addproducts.dart';
import 'package:meta/meta.dart';

part 'addproduct_event.dart';
part 'addproduct_state.dart';

class AddproductBloc extends Bloc<AddproductEvent, AddproductState> {
  final CollectionReference products =
      FirebaseFirestore.instance.collection('products');
  AddproductBloc() : super(AddproductInitial());
  // on<AddproductEvent>(
  //   (event, emit) {
  //     // if (event is ProductAddingEvent) {
  //     //   moviesRef.add({
  //     //     'productname': 'sds',
  //     //   })
  //     // }
  //   },
  // );

  @override
  Stream<AddproductState> mapEventToState(AddproductEvent event) async* {
    if (event is ProductAddingEvent) {
      print("prod adding event");
      var val = await products.add({
        'productName': event.productTitle,
        'productId': event.productId,
        'description': event.description,
        'price': event.price,
        'quantity': event.quantity,
        'status': event.status,
      });
      if (val == null) {
        print("null value");
      } else {
        print("value exist");
        yield ProductUploadState();
      }
    } else if (event is ClearFormEvent) {
      yield ClearFormState();
    }
  }
}
