import 'package:cs_ecomm/dashboard/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  AppBarPage({Key? key, required this.dashboardBloc}) : super(key: key);
  final DashboardBloc dashboardBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: FlatButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.dashboard),
                label: const Text('Dashboard'),
              ),
            ),
            Expanded(
              child: FlatButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.sort),
                label: const Text('Manage'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
