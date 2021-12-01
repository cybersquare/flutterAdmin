import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  DropDown({Key? key, required this.status}) : super(key: key);
  final List<DropdownMenuItem<dynamic>> status;

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String selectedValue = 'Active';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: DropdownButton<String>(
        isExpanded: true,
        items: <String>[
          'Active',
          'Draft',
        ].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (_) {},
        value: "Active",
      ),
    );
  }
}
