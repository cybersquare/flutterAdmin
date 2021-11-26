// ignore_for_file: lines_longer_than_80_chars, prefer_const_constructors, require_trailing_commas

import 'package:flutter/material.dart';

class TotalUser extends StatelessWidget {
  TotalUser({Key? key}) : super(key: key);

  final List<Map<String, String>> user = [
    {'Name': 'Anu', 'email': 'anu@gmail.com', 'Mobile': '9876543211'},
    {'Name': 'Risha', 'email': 'risha@gmail.com', 'Mobile': '9876543211'},
    {'Name': 'Surya', 'email': 'surya@gmail.com', 'Mobile': '9876543211'},
    {'Name': 'Anshad', 'email': 'anshad@gmail.com', 'Mobile': '9876543211'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1976D2),
        title: Center(
          child: Text(
            'Total User',
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'User List',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          DataTable(
            // ignore: prefer_const_literals_to_create_immutables
            columns: [
              DataColumn(
                  label: Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              DataColumn(
                  label: Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              DataColumn(
                  label: Text(
                'Mobile',
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
                          DataCell(Text(element['email'].toString())),
                          DataCell(Text(element['Mobile'].toString())),
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
