import 'package:cs_ecomm/viewProduct/models/products_model.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  Products({Key? key}) : super(key: key);
  List<ProductsModel> productList = [
    ProductsModel(
        title: 'Iphone',
        stock: 3,
        status: 'active',
        price: 80000,
        vendor: 'Apple',
        picture: 'assets/images/iphone.jfif'),
    ProductsModel(
        title: 'Tshirt',
        stock: 3,
        status: 'active',
        price: 80000,
        vendor: 'Apple',
        picture: 'assets/images/men.jfif'),
    ProductsModel(
        title: 'Kids Tshirt',
        stock: 3,
        status: 'active',
        price: 80000,
        vendor: 'Apple',
        picture: 'assets/images/tshirt.jfif'),
    ProductsModel(
        title: 'Shoe',
        stock: 3,
        status: 'active',
        price: 80000,
        vendor: 'Apple',
        picture: 'assets/images/shoe.jfif'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 0,
        childAspectRatio: 0.5,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 0.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.asset(productList[index].picture.toString(),
                    fit: BoxFit.fill),
              ),
              ListTile(
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        productList[index].title.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        productList[index].price.toString(),
                        style: const TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  productList[index].stock.toString() + ' in stock',
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
      itemCount: productList.length,
    );
  }
}
