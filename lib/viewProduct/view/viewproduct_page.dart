import 'package:cs_ecomm/viewProduct/view/widgets/appbar_widget.dart';
import 'package:cs_ecomm/viewProduct/view/widgets/products_widget.dart';
import 'package:flutter/material.dart';

class ViewProduct extends StatelessWidget {
  const ViewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: ProductsAppBar(),
      ),
      body: Products(),
      // body: Expanded(
      //   child: Text('hello'),
      // ),
    );
  }
}
