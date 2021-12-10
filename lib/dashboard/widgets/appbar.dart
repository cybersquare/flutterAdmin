import 'package:cs_ecomm/dashboard/bloc/dashboard_bloc.dart';
import 'package:cs_ecomm/dashboard/widgets/dashboard_ui.dart';
import 'package:cs_ecomm/dashboard/widgets/manage_ui.dart';
import 'package:cs_ecomm/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/src/rendering/box.dart';

class AppBarPage extends StatelessWidget {
  AppBarPage({Key? key, required this.dashboardBloc}) : super(key: key);
  final DashboardBloc dashboardBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (context) => dashboardBloc
        ..add(
          DashboardSwitch(isDAshboard: true),
        ),
      child: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          backgroundColor: Colors.greenAccent,
          elevation: 0,
          title: Row(
            children: [
              Expanded(
                child: FlatButton.icon(
                  onPressed: () {
                    dashboardBloc.add(DashboardSwitch(isDAshboard: true));
                  },
                  icon: const Icon(Icons.dashboard),
                  label: const Text('Dashboard'),
                ),
              ),
              Expanded(
                child: FlatButton.icon(
                  onPressed: () {
                    dashboardBloc.add(DashboardSwitch(isDAshboard: false));
                  },
                  icon: const Icon(Icons.sort),
                  label: const Text('Manage'),
                ),
              ),
            ],
          ),
        ),
        body: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            if (state is DashboardSelectedState) {
              if (state.showDashboard == true) {
                print(state);
                return const DashbordUI();
                // return Text("test");
              }
              return ManageUI();
            }
            return Container();
          },
        ),
        drawer: Drawers(),
      ),
    );
  }
}
