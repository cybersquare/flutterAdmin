import 'package:cs_ecomm/add_products/bloc/addproduct_bloc.dart';
import 'package:cs_ecomm/add_products/view/widget/add_product_submit.dart';
import 'package:cs_ecomm/add_products/view/widget/add_product_text_field.dart';
import 'package:cs_ecomm/add_products/view/widget/dropdown.dart';
import 'package:cs_ecomm/add_products/view/widget/file_upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProduct extends StatelessWidget {
  AddProduct({Key? key}) : super(key: key);
  final formGlobalKey = GlobalKey<FormState>();

  final AddproductBloc _addproductBloc = AddproductBloc();
  final TextEditingController productTitleController =
      TextEditingController(text: '');
  final TextEditingController productidController =
      TextEditingController(text: '');
  final TextEditingController descriptionController =
      TextEditingController(text: '');
  final TextEditingController priceController = TextEditingController(text: '');
  final TextEditingController quantityController =
      TextEditingController(text: '');
  final TextEditingController statusController =
      TextEditingController(text: '');
  List<DropdownMenuItem<dynamic>> productStatus =
      ['Active', 'Draft'].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddproductBloc>(
      create: (context) => _addproductBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Add Products'),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formGlobalKey,
            child: Column(
              children: [
                AddProductTextFieldWidget(
                  controller: productTitleController,
                  hintText: 'Product Title',
                ),
                AddProductTextFieldWidget(
                  controller: productidController,
                  hintText: 'Product Id',
                ),
                AddProductTextFieldWidget(
                  controller: descriptionController,
                  hintText: 'Description',
                ),
                AddProductTextFieldWidget(
                  controller: priceController,
                  hintText: 'Price(In Ruppes)',
                ),
                AddProductTextFieldWidget(
                  controller: quantityController,
                  hintText: 'Quantity',
                ),
                AddProductTextFieldWidget(
                  controller: statusController,
                  hintText: 'Status',
                ),
                DropDown(
                  status: productStatus,
                ),
                FileUploadWidget(),
                AddProductSubmit(
                  addProductSubmit: () {
                    if (formGlobalKey.currentState!.validate()) {
                      _addproductBloc.add(
                        ProductAddingEvent(
                          productTitle: productTitleController.text,
                          productId: productidController.text,
                          description: descriptionController.text,
                          price: double.parse(priceController.text),
                          quantity: int.parse(quantityController.text),
                          status: statusController.text,
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
