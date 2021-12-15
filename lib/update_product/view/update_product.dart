import 'package:cs_ecomm/add_products/addproduct.dart';
import 'package:cs_ecomm/update_product/bloc/updateproduct_bloc.dart';
import 'package:cs_ecomm/update_product/view/widget/button_widget.dart';
import 'package:cs_ecomm/update_product/view/widget/dropdown.dart';
import 'package:cs_ecomm/update_product/view/widget/product_image.dart';
import 'package:cs_ecomm/update_product/view/widget/update_product_textfield.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateProduct extends StatelessWidget {
  UpdateProduct({Key? key, required this.productId}) : super(key: key) {
    this.productId = '1B4rtiZBA5P2CoOkEYp9';
  }
  Object? productId;
  TextEditingController productNameController = TextEditingController(
    text: 'Tomato',
  );
  TextEditingController descriptionController = TextEditingController(
    text: 'Fresh vegetable',
  );
  TextEditingController priceController = TextEditingController(text: '20');
  TextEditingController quantityController = TextEditingController(text: '5');
  List<DropdownMenuItem<dynamic>> productStatus =
      ['Active', 'Draft'].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

  // String buttonText = "Add product";
  // Function onPressFun = () {};
  Color submitBtnColor = Colors.blue;
  Color resetBtnColor = const Color(0xFFE8EAF6);
  final UpdateproductBloc _updateproductBloc = UpdateproductBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UpdateproductBloc>(
      create: (context) => _updateproductBloc
        ..add(LoadUpdateProductDetailsEvent(productId: productId)),
      // ..add(LoadUpdateProductDetailsEvent(productId: productId)),
      child: BlocListener<UpdateproductBloc, UpdateproductState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_sharp),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
            title: const Text('Update Product'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: ProductImage(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: UpdateProductTextField(
                    controller: productNameController,
                    hintText: 'Product Name',
                    maxLine: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: UpdateProductTextField(
                    controller: descriptionController,
                    hintText: 'Description',
                    maxLine: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: UpdateProductTextField(
                    controller: priceController,
                    hintText: 'Price',
                    maxLine: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: UpdateProductTextField(
                    controller: quantityController,
                    hintText: 'Quantity',
                    maxLine: 1,
                  ),
                ),
                // DropDown(
                //   status: productStatus,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UpdateProductButtonWidget(
                      buttonText: 'Cancel',
                      onPressFun: () {},
                      btnColor: resetBtnColor,
                    ),
                    UpdateProductButtonWidget(
                      buttonText: 'Submit',
                      onPressFun: () {
                        LoadUpdateProductDetailsEvent(productId: productId);
                      },
                      btnColor: submitBtnColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
