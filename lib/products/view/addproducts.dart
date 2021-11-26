import 'package:cs_ecomm/products/bloc/addproduct_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProduct extends StatelessWidget {
  AddProduct({Key? key}) : super(key: key);

  AddproductBloc _addproductBloc = AddproductBloc();
  TextEditingController _titleController = TextEditingController(text: "");
  TextEditingController _productidController = TextEditingController(text: "");
  TextEditingController _descriptionController =
      TextEditingController(text: "");
  TextEditingController _priceController = TextEditingController(text: "");
  TextEditingController _quantityController = TextEditingController(text: "");
  TextEditingController _statusController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddproductBloc>(
      create: (context) => _addproductBloc,
      child: BlocConsumer<AddproductBloc, AddproductState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Center(child: Text("Add Products")),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      style: const TextStyle(height: .15),
                      keyboardType: TextInputType.text,
                      controller: _titleController,
                      decoration: const InputDecoration(
                        hintText: "Product Title",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      style: const TextStyle(height: .15),
                      keyboardType: TextInputType.text,
                      controller: _productidController,
                      decoration: const InputDecoration(
                        hintText: "Product Id",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      style: const TextStyle(height: .15),
                      keyboardType: TextInputType.text,
                      controller: _descriptionController,
                      decoration: const InputDecoration(
                        hintText: "Description",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      style: const TextStyle(height: .15),
                      keyboardType: TextInputType.text,
                      controller: _priceController,
                      decoration: const InputDecoration(
                        hintText: "Price",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      style: const TextStyle(height: .15),
                      keyboardType: TextInputType.text,
                      controller: _quantityController,
                      decoration: const InputDecoration(
                        hintText: "Quantity",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      style: const TextStyle(height: .15),
                      keyboardType: TextInputType.text,
                      controller: _statusController,
                      decoration: const InputDecoration(
                        hintText: "Status",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: OutlineButton(
                      onPressed: () {},
                      child: Text('Choose Image'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      child: Container(
                        child: Center(
                          child: Text("Add Product"),
                        ),
                        color: Colors.blue,
                        height: 40,
                        width: 130,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
