import 'package:cs_ecomm/viewProduct/bloc/viewproduct_bloc.dart';
import 'package:cs_ecomm/viewProduct/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Products extends StatelessWidget {
  Products({Key? key}) : super(key: key);
  ViewproductBloc _viewproductBloc = ViewproductBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ViewproductBloc>(
      create: (context) => _viewproductBloc..add(ProductListingEvent()),
      child: BlocBuilder<ViewproductBloc, ViewproductState>(
        builder: (context, state) {
          if (state is ProductListingState) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 0,
                childAspectRatio: 0.5,
              ),
              itemBuilder: (BuildContext context, int index) {
                print(state.data[index].imageurl);
                return Card(
                  elevation: 0.1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.network(state.data[index].imageurl),
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Expanded(
                              child: Text(
                                state.data[index].productName,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                state.data[index].price.toString(),
                                style: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text(
                          state.data[index].quantity.toString() + ' in stock',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ButtonBar(
                        children: [
                          FlatButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.edit,
                              color: Colors.purple,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: state.data.length,
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.green,
            ),
          );
        },
      ),
    );
  }
}
