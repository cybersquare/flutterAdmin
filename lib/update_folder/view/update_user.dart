import 'package:cs_ecomm/update_folder/view/widget/update_product_textfield.dart';
import 'package:flutter/material.dart';

class UpdateUser extends StatelessWidget {
  UpdateUser({Key? key}) : super(key: key);
  TextEditingController productNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_sharp),
        title: const Text('Update Product'),
      ),
      body: Column(
        children: [
          UpdateProductTextField(
            controller: productNameController,
            hintText: 'Product Name',
          ),
          UpdateProductTextField(
            controller: descriptionController,
            hintText: 'Description',
          )
        ],
      ),
    );
  }
}
