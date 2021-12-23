import 'dart:io' as io;

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cs_ecomm/add_products/addproduct.dart';
// import 'package:cs_ecomm/add_products/view/addproducts.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebaseStrorage;
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'addproduct_event.dart';
part 'addproduct_state.dart';

class AddproductBloc extends Bloc<AddproductEvent, AddproductState> {
  AddproductBloc() : super(AddproductInitial());
  final CollectionReference products =
      FirebaseFirestore.instance.collection('products');
  final uuid = const Uuid();
  @override
  Stream<AddproductState> mapEventToState(AddproductEvent event) async* {
    if (event is ProductAddingEvent) {
      // print(event.)
      final ref = firebaseStrorage.FirebaseStorage.instance
          .ref()
          .child('product_images')
          .child('${uuid.v4()}${event.imagename}');

      final metadata = firebaseStrorage.SettableMetadata(
        contentType: event.mimeType,
        customMetadata: {
          'picked-file-path': event.imageController.path,
        },
      );

      await ref.putFile(event.imageController, metadata);
      final imgPublicLink = await ref.getDownloadURL();
      final val = await products.add({
        'productName': event.productTitle,
        'productId': event.productId,
        'description': event.description,
        'price': event.price,
        'quantity': event.quantity,
        'status': event.status,
        'imageurl': imgPublicLink,
      });
      if (val == null) {
        yield ProductUploadFailedState();
      } else {
        yield ProductUploadState();
      }
    } else if (event is ClearFormEvent) {
      yield ClearFormState();
    }
  }
}
