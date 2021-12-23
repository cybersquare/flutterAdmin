import 'package:cs_ecomm/dashboard/bloc/dashboard_bloc.dart';
import 'package:cs_ecomm/dashboard/widgets/dashboard_ui.dart';
import 'package:cs_ecomm/dashboard/widgets/pie_chart.dart';
import 'package:cs_ecomm/dashboard/widgets/sales_analysis.dart';
import 'package:cs_ecomm/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarPage extends StatelessWidget {
  AppBarPage({Key? key, required this.dashboardBloc}) : super(key: key);
  final DashboardBloc dashboardBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        print(state);
        if (state is DashboardSelectedState) {
          return Scaffold(
            appBar: AppBar(
              // automaticallyImplyLeading: false,
              elevation: 0,
              title: Row(
                children: [
                  Expanded(
                    child: FlatButton.icon(
                      onPressed: () {
                        dashboardBloc.add(DashboardSwitch(isDAshboard: true));
                      },
                      icon: Icon(
                        Icons.dashboard,
                        color: state.showDashboard == true
                            ? Colors.greenAccent
                            : Colors.white,
                      ),
                      label: Text(
                        'Dashboard',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 0.03.sw,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton.icon(
                      onPressed: () {
                        dashboardBloc.add(DashboardSwitch(isDAshboard: false));
                      },
                      icon: Icon(
                        Icons.sort,
                        color: state.showDashboard == true
                            ? Colors.white
                            : Colors.greenAccent,
                      ),
                      label: Text(
                        'Sales & Analysis',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 0.03.sw,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, state) {
                print(state);
                if (state is DashboardSelectedState) {
                  if (state.showDashboard == true) {
                    print(state);
                    return const DashbordUI();
                  }
                }
                return const SalesAnalysis();
              },
            ),
            drawer: Drawers(),
          );
        }
        return Container();
      },
    );
  }
}



// class AppBarPage extends StatelessWidget {
//   AppBarPage({Key? key, required this.dashboardBloc}) : super(key: key);
//   final DashboardBloc dashboardBloc;

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<DashboardBloc>(
//       create: (context) => dashboardBloc
//         ..add(
//           DashboardSwitch(isDAshboard: true),
//         ),
//       child: Scaffold(
//         appBar: AppBar(
//           // automaticallyImplyLeading: false,
//           // backgroundColor: Colors.grey,
//           elevation: 0,
//           title: Row(
//             children: [
//               Expanded(
//                 child: FlatButton.icon(
//                   onPressed: () {
//                     dashboardBloc.add(DashboardSwitch(isDAshboard: true));
//                   },
//                   icon: const Icon(
//                     Icons.dashboard,
//                     color: Colors.white,
//                   ),
//                   label: const Text(
//                     'Dashboard',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: FlatButton.icon(
//                   onPressed: () {
//                     dashboardBloc.add(DashboardSwitch(isDAshboard: false));
//                   },
//                   icon: const Icon(
//                     Icons.sort,
//                     color: Colors.white,
//                   ),
//                   label: const Text(
//                     'Sales & Analysis',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         body: BlocBuilder<DashboardBloc, DashboardState>(
//           builder: (context, state) {
//             if (state is DashboardSelectedState) {
//               if (state.showDashboard == true) {
//                 print(state);
//                 return const DashbordUI();
//                 // return Text("test");
//               }
//               return const SalesAnalysis();
//             }
//             return Container();
//           },
//         ),
//         drawer: Drawers(),
//       ),
//     );
//   }
// }
