// import 'package:cs_ecomm/dashboard/bloc/dashboard_bloc.dart';
// import 'package:cs_ecomm/dashboard/widgets/appbar.dart';
// import 'package:cs_ecomm/dashboard/widgets/manage_ui.dart';
// import 'package:cs_ecomm/drawer/drawer.dart';
// import 'package:cs_ecomm/router/route_constants.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class DashboradPage extends StatelessWidget {
//   DashboradPage({Key? key}) : super(key: key);
//   DashboardBloc _dashboardBloc = DashboardBloc();
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<DashboardBloc>(

//       create: (context) => _dashboardBloc,
//       child: BlocConsumer<DashboardBloc, DashboardState>(
//         listener: (context, state) {
//           // TODO: implement listener
//         },
//         builder: (context, state) {
//           return Scaffold(
//             appBar: AppBar(
//               // backgroundColor: Color(0xff1976D2),
//               title: const Center(
//                 child: Text(
//                   "Dashboard",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             drawer: Drawers(),
//             body: _buildcard(),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildcard() {
//     // ignore: avoid_unnecessary_containers
//     return Container(
//       child: GridView.count(
//         crossAxisCount: 2,
//         controller: new ScrollController(keepScrollOffset: false),
//         shrinkWrap: true,
//         scrollDirection: Axis.vertical,
//         children: List.generate(cards.length, (index) {
//           // return new Container(
//           return GestureDetector(
//             onTap: () {
//               switch (cards[index].title) {
//                 case "Total Users":
//                   {
//                     Navigator.pushNamed(context, RouteConstants.totalUserRoute);
//                   }
//                   break;
//                 case "Total Products":
//                   {
//                     Navigator.pushNamed(
//                         context, RouteConstants.totalProductRoute);
//                   }
//                   break;
//                 case "Total Orders":
//                   {
//                     Navigator.pushNamed(
//                         context, RouteConstants.totalorderRoute);
//                   }
//                   break;
//               }
//             },
//             child: Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(7.0),
//                 child: Card(
//                   color: Colors.indigo[100],
//                   child: Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       //  mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: <Widget>[
//                         Text(
//                           cards[index].title,
//                           style: const TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           cards[index].number,
//                           style: const TextStyle(fontSize: 16),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         }).toList(),

//       create: (context) => _dashBoard..add(DashboardSwitch(isDAshboard: true)),
//       child: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(50),
//           child: AppBarPage(dashboardBloc: _dashBoard),
//         ),
//         body: BlocBuilder<DashboardBloc, DashboardState>(
//             builder: (context, state) {
//           if (state is DashboardSelectedState) {
//             if (state.showDashboard == true) {
//               return DashboradPage();
//             }
//             return ManageUI();
//           }
//           return Container();
//         }),

//       ),
//     );
//   }
// }

import 'package:cs_ecomm/dashboard/bloc/dashboard_bloc.dart';
import 'package:cs_ecomm/drawer/drawer.dart';
import 'package:cs_ecomm/router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const List<Cards> cards = <Cards>[
  Cards(title: 'Total Users', number: '400'),
  Cards(title: 'Total Products', number: '100'),
  Cards(title: 'Total Orders', number: '300'),
  Cards(title: 'Total Revenue', number: '\u{20B9}30000'),
];

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  DashboardBloc _dashboardBloc = DashboardBloc();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (context) => _dashboardBloc,
      child: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff1976D2),
              title: Center(
                child: Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            drawer: Drawers(),
            body: _buildcard(),
          );
        },
      ),
    );
  }

  Widget _buildcard() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        controller: new ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: List.generate(cards.length, (index) {
          // return new Container(
          return GestureDetector(
            onTap: () {
              switch (cards[index].title) {
                case "Total Users":
                  {
                    Navigator.pushNamed(context, RouteConstants.totalUserRoute);
                  }
                  break;
                case "Total Products":
                  {
                    Navigator.pushNamed(
                        context, RouteConstants.totalProductRoute);
                  }
                  break;
                case "Total Orders":
                  {
                    Navigator.pushNamed(
                        context, RouteConstants.totalorderRoute);
                  }
                  break;
              }
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Card(
                    color: Colors.lightBlue[100],
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //  mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              cards[index].title,
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              cards[index].number,
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ]),
                    )),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Cards {
  const Cards({required this.title, required this.number});
  final String title;
  final String number;
}
