import 'package:bloc/bloc.dart';
import 'package:cs_ecomm/update_product/update_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropDown extends StatefulWidget {
  DropDown({Key? key, required this.status}) : super(key: key);
  final List<DropdownMenuItem<dynamic>> status;

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String selectedValue = 'Active';
  bool isActive = true;
  final UpdateproductBloc _bloc = UpdateproductBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc..add(DropDownEvent(isActive: isActive)),
      child: BlocBuilder<UpdateproductBloc, UpdateproductState>(
        builder: (context, state) {
          if (state is UpdateDropDownState) {
            print(state.showActive);
            if (state.showActive == true) {
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
                  onChanged: (_) {
                    isActive = false;
                    _bloc..add(DropDownEvent(isActive: isActive));
                  },
                  value: 'Active',
                ),
              );
            } else {
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
                  onChanged: (_) {
                    isActive = true;
                    _bloc..add(DropDownEvent(isActive: isActive));
                  },
                  value: 'Draft',
                ),
              );
            }
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
