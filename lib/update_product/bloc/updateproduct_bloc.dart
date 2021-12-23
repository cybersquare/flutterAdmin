import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cs_ecomm/update_product/model/update_model.dart';
// import 'package:firebase/firestore.dart';
import 'package:meta/meta.dart';

part 'updateproduct_event.dart';
part 'updateproduct_state.dart';

class UpdateproductBloc extends Bloc<UpdateproductEvent, UpdateproductState> {
  UpdateproductBloc() : super(UpdateDropDownState(showActive: true));
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('products');

  @override
  Stream<UpdateproductState> mapEventToState(UpdateproductEvent event) async* {
    if (event is DropDownEvent) {
      yield UpdateDropDownState(showActive: event.isActive);
    }
    if (event is LoadUpdateProductDetailsEvent) {
      // final result = await collectionReference.doc('1B4rtiZBA5P2CoOkEYp9');
      // var result = await collectionReference.document('9AWwHB21gmWYlwFdWyw8');
      final productData =
          await collectionReference.doc('9AWwHB21gmWYlwFdWyw8').get();
      print(productData.data());
      final productDetails = UpdateProductModel.fromJson(
        productData.data() as Map<String, dynamic>,
      );
      yield UpdateProductDetailsEvent(productDetails: productDetails);
    }
    if (event is UpdateProductPushToDatabaseEvent) {
      await collectionReference.doc('9AWwHB21gmWYlwFdWyw8').update(
        {
          "description": event.description,
          "productName": event.productName,
          "price": event.price,
          "quantity": event.quantity,
        },
      );
      yield NavigateToHomeScreen();
    }
  }
}
