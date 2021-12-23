import 'package:cs_ecomm/dashboard/widgets/custome_cards.dart';
import 'package:cs_ecomm/router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/src/rendering/box.dart';

class DashbordUI extends StatelessWidget {
  const DashbordUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                // mainAxisExtent: 150,
              ),
              children: [
                CustomeCards(
                  number: 555,
                  title: 'Total Users',
                  ontap: () {
                    Navigator.pushNamed(context, RouteConstants.totalUserRoute);
                  },
                  color: Colors.pink.shade900,
                ),
                CustomeCards(
                  number: 555,
                  title: 'Total Products',
                  ontap: () {
                    print('pressed................');
                    Navigator.pushNamed(
                        context, RouteConstants.totalProductRoute);
                  },
                  color: Colors.amberAccent,
                ),
                CustomeCards(
                  number: 555,
                  title: 'Total Orders',
                  ontap: () {
                    Navigator.pushNamed(
                        context, RouteConstants.totalorderRoute);
                  },
                  color: Colors.green,
                ),
                CustomeCards(
                  number: 555,
                  title: 'Total Revenue',
                  ontap: () {},
                  color: Colors.orangeAccent,
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 0.9.sw,
          height: 0.42.sh,
          color: Colors.grey[150],
          child: Column(
            children: [
              // Text(
              //   'Sales',
              //   style: TextStyle(
              //     color: Colors.tealAccent,
              //     fontSize: 0.07.sw,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              Card(
                child: ListTile(
                  title: Text(
                    'Order Recieved',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 0.05.sw,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    '600',
                    style: TextStyle(
                      fontSize: 0.05.sw,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Order Deliverd',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 0.05.sw,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    '1056',
                    style: TextStyle(
                      fontSize: 0.05.sw,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Order Return',
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 0.05.sw,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    '80',
                    style: TextStyle(
                      fontSize: 0.05.sw,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'New Customers',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontSize: 0.05.sw,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    '200',
                    style: TextStyle(
                      fontSize: 0.05.sw,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
