// ignore_for_file: lines_longer_than_80_chars, prefer_const_constructors, require_trailing_commas

import 'package:flutter/material.dart';

class TotalProduct extends StatelessWidget {
  TotalProduct({Key? key}) : super(key: key);

  final List<Map<String, String>> user = [
    {'ProductId': '1', 'Productname': 'Samsung'},
    {'ProductId': '2', 'Productname': 'Redmi'},
    {'ProductId': '3', 'Productname': 'Motorolla'},
    {'ProductId': '4', 'Productname': 'Realme'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1976D2),
        title: Center(
          child: Text(
            'Total Product',
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Product List',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          DataTable(
            // ignore: prefer_const_literals_to_create_immutables
            columns: [
              DataColumn(
                  label: Text(
                'Product Id',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              DataColumn(
                  label: Text(
                'Product Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ],
            rows: user
                .map(
                  // ignore: unnecessary_parenthesis
                  ((element) => DataRow(
                        cells: <DataCell>[
                          DataCell(Text(element['Name']
                              .toString())), //Extracting from Map element the value
                          DataCell(Text(element['ProductId'].toString())),
                          DataCell(Text(element['Productname'].toString())),
                        ],
                      )),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
