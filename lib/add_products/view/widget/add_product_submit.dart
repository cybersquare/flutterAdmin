import 'package:cs_ecomm/add_products/addproduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductSubmit extends StatelessWidget {
  AddProductSubmit({
    Key? key,
    required this.addProductSubmit,
  }) : super(key: key);

  final Function addProductSubmit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        child: Container(
          color: Colors.blue,
          height: 40,
          width: 130,
          child: const Center(
            child: Text('Add Product'),
          ),
        ),
        onPressed: () {
          addProductSubmit();
        },
      ),
    );
  }
}
