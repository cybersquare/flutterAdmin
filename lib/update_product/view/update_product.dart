import 'package:cs_ecomm/add_products/addproduct.dart';
import 'package:cs_ecomm/router/route_constants.dart';
import 'package:cs_ecomm/update_product/bloc/updateproduct_bloc.dart';
import 'package:cs_ecomm/update_product/view/widget/button_widget.dart';
// import 'package:cs_ecomm/update_product/view/widget/dropdown.dart';
import 'package:cs_ecomm/update_product/view/widget/product_image.dart';
import 'package:cs_ecomm/update_product/view/widget/update_product_textfield.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class UpdateProduct extends StatelessWidget {
  UpdateProduct({Key? key, required this.productId}) : super(key: key) {
    this.productId = '1B4rtiZBA5P2CoOkEYp9';
  }
  Object? productId;
  final TextEditingController productNameController = TextEditingController(
    text: '',
  );
  final TextEditingController descriptionController = TextEditingController(
    text: '',
  );
  final TextEditingController priceController = TextEditingController(text: '');
  final TextEditingController quantityController =
      TextEditingController(text: '');
  final List<DropdownMenuItem<dynamic>> productStatus =
      ['Active', 'Draft'].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();
  Color submitBtnColor = Colors.blue;
  Color resetBtnColor = const Color(0xFFE8EAF6);
  final UpdateproductBloc _updateproductBloc = UpdateproductBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UpdateproductBloc>(
      create: (context) => _updateproductBloc
        ..add(LoadUpdateProductDetailsEvent(productId: productId)),
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
        body: BlocBuilder<UpdateproductBloc, UpdateproductState>(
          builder: (context, state) {
            if (state is UpdateProductDetailsEvent) {
              productNameController.text = state.productDetails.productName;
              priceController.text = state.productDetails.price.toString();
              descriptionController.text = state.productDetails.description;
              quantityController.text =
                  state.productDetails.quantity.toString();

              return SingleChildScrollView(
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
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFE8EAF6),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                RouteConstants.dashboardRoute,
                              );
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFE8EAF6),
                            ),
                            onPressed: () {
                              _updateproductBloc.add(
                                UpdateProductPushToDatabaseEvent(
                                  description: descriptionController.text,
                                  quantity: quantityController.text,
                                  productName: productNameController.text,
                                  price: priceController.text,
                                ),
                              );
                            },
                            child: const Text(
                              'Update',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            } else if (state is NavigateToHomeScreen) {
              Navigator.pushNamed(context, RouteConstants.dashboardRoute);
              return Container();
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SpinKitRotatingCircle(
                      color: Colors.blue,
                      size: 100.sp,
                    )
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
