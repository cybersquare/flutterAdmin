import 'package:cs_ecomm/update_product/view/widget/button_widget.dart';
import 'package:cs_ecomm/update_product/view/widget/product_image.dart';
import 'package:cs_ecomm/update_product/view/widget/update_product_textfield.dart';
import 'package:file_picker/file_picker.dart';
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

  // String buttonText = "Add product";
  // Function onPressFun = () {};
  Color submitBtnColor = Colors.blue;
  Color resetBtnColor = Color(0xFFE8EAF6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressFun: () {},
                  btnColor: submitBtnColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
