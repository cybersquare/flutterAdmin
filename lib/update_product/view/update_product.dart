import 'package:cs_ecomm/router/route_constants.dart';
import 'package:cs_ecomm/update_product/view/widget/button_widget.dart';
import 'package:cs_ecomm/update_product/view/widget/dropdown.dart';
import 'package:cs_ecomm/update_product/view/widget/product_image.dart';
import 'package:cs_ecomm/update_product/view/widget/update_product_textfield.dart';
import 'package:flutter/material.dart';

class UpdateProduct extends StatelessWidget {
  UpdateProduct({Key? key}) : super(key: key);
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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_sharp),
        //   onPressed: () {
        //     Navigator.pop(context, false);
        //   },
        // ),
        title: const Text('Update Product'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
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
                  validationError: 'Please enter product name',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: UpdateProductTextField(
                  controller: descriptionController,
                  hintText: 'Description',
                  maxLine: 3,
                  validationError: 'Please enter description',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: UpdateProductTextField(
                  controller: priceController,
                  hintText: 'Price',
                  maxLine: 1,
                  validationError: 'Please enter price',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: UpdateProductTextField(
                  controller: quantityController,
                  hintText: 'Quantity',
                  maxLine: 1,
                  validationError: 'Please enter quantity',
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
                    onPressFun: () {
                      Navigator.pushNamed(
                          context, RouteConstants.dashboardRoute);
                    },
                    btnColor: resetBtnColor,
                  ),
                  UpdateProductButtonWidget(
                    buttonText: 'Submit',
                    // onPressFun: () {},
                    onPressFun: () {
                      if (formKey.currentState!.validate() == false) {
                        print('Validation errors occured');
                      } else {
                        print('validation success');
                      }
                    },
                    btnColor: submitBtnColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
