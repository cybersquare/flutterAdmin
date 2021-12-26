import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cs_ecomm/viewProduct/models/product_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'viewproduct_event.dart';
part 'viewproduct_state.dart';

class ViewproductBloc extends Bloc<ViewproductEvent, ViewproductState> {
  ViewproductBloc() : super(ViewproductInitial());

  List<Product> productList = [];
  @override
  Stream<ViewproductState> mapEventToState(ViewproductEvent event) async* {
    if (event is ProductListingEvent) {
      final CollectionReference collectionReference =
          await FirebaseFirestore.instance.collection('products');
      final data = await collectionReference.get();
      await Future.forEach(data.docs, (QueryDocumentSnapshot<Object?> element) {
        productList.add(
          Product.fromJson(element.data() as Map<String, dynamic>),
        );
      });
      yield ProductListingState(data: productList);
    }
  }
}
