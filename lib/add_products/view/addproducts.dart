import 'dart:io' as io;

import 'package:cs_ecomm/add_products/bloc/addproduct_bloc.dart';
import 'package:cs_ecomm/add_products/view/widget/add_product_submit.dart';
import 'package:cs_ecomm/add_products/view/widget/add_product_text_field.dart';
import 'package:cs_ecomm/add_products/view/widget/dropdown.dart';
import 'package:cs_ecomm/addproduct_image/add_product_image.dart';
import 'package:cs_ecomm/addproduct_image/view/add_product_image.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
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
  io.File imageController = io.File('');
  String imagename = '';
  String? mimeType = '';

  List<DropdownMenuItem<dynamic>> productStatus =
      ['Active', 'Draft'].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

  void clearText() {
    productTitleController.clear();
    descriptionController.clear();
    productidController.clear();
    statusController.clear();
    priceController.clear();
    quantityController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddproductBloc>(
          create: (BuildContext context) => _addproductBloc,
        ),
        BlocProvider<AddproductimageBloc>(
          create: (BuildContext context) => AddproductimageBloc(),
        ),
      ],
      // create: (context) => _addproductBloc,
      child: BlocConsumer<AddproductBloc, AddproductState>(
        listener: (context, state) {
          print(state);

          if (state is ProductUploadState) {
            showTopSnackBar(
              context,
              const CustomSnackBar.success(
                message: 'Product added successfully',
              ),
            );

            _addproductBloc..add(ClearFormEvent());
          } else if (state is ProductUploadFailedState) {
            showTopSnackBar(
              context,
              const CustomSnackBar.error(
                message: 'Failed to add your product',
              ),
            );
          } else if (state is ClearFormState) {
            clearText();
          }
        },
        builder: (context, state) {
          return Scaffold(
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
                    BlocBuilder<AddproductimageBloc, AddproductimageState>(
                      builder: (context, state) {
                        if (state is ProductImageAddedState) {
                          mimeType = state.mimeType;
                          imagename = state.imagename;
                          imageController = state.imagefile;
                        }

                        return AddProductImage(
                          imageController: imageController,
                        );
                      },
                    ),
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
                    // DropDown(
                    //   status: productStatus,
                    // ),
                    // const FileUploadWidget(),
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
                              imageController: imageController,
                              imagename: imagename,
                              mimeType: mimeType,
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
