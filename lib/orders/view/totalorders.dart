import 'package:flutter/material.dart';

class TotalOrder extends StatelessWidget {
  TotalOrder({Key? key}) : super(key: key);
  final List<Map<String, String>> order = [
    {
      'id': '1',
      'Customer name': 'Anu',
      'OrderId': '1',
      'Product name': 'Samsung',
      'Order date': '23/11/2021',
      'Amount': '\u{20B9}15000'
    },
    {
      'id': '2',
      'Customer name': 'Risha',
      'OrderId': '2',
      'Product name': 'Redmi',
      'Order date': '23/11/2021',
      'Amount': '\u{20B9}15000'
    },
    {
      'id': '3',
      'Customer name': 'Anshad',
      'OrderId': '3',
      'Product name': 'Realme',
      'Order date': '23/11/2021',
      'Amount': '\u{20B9}15000'
    },
    {
      'id': '4',
      'Customer name': 'Surya',
      'OrderId': '4',
      'Product name': 'Oppo',
      'Order date': '23/11/2021',
      'Amount': '\u{20B9}15000'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1976D2),
        title: Center(
          child: Text(
            'Total Orders',
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Order List',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              // ignore: prefer_const_literals_to_create_immutables
              columns: [
                DataColumn(
                    label: Text(
                  'Id',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'Customer Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'OrderId',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'Product Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'Order date',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'Amount',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ],
              rows: order
                  .map(
                    // ignore: unnecessary_parenthesis
                    ((element) => DataRow(
                          cells: <DataCell>[
                            DataCell(Text(element['id'].toString())),
                            DataCell(Text(element['Customer name'].toString())),
                            DataCell(Text(element['OrderId'].toString())),
                            DataCell(Text(element['Product name'].toString())),
                            DataCell(Text(element['Order date'].toString())),
                            DataCell(Text(element['Amount'].toString())),
                          ],
                        )),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
