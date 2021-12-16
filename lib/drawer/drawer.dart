import 'package:cs_ecomm/router/route_constants.dart';
import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey[800],
              ),
              accountName: const Text('Username'),
              accountEmail: const Text('xxx@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.green
                        : Colors.white,
                child: const Text(
                  'A',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.dashboard),
              onTap: () {
                Navigator.pushNamed(context, RouteConstants.dashboardRoute);
              },
            ),
            ListTile(
              title: const Text('Add Product'),
              leading: const Icon(
                Icons.shopping_cart,
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouteConstants.addProductRoute,
                  arguments: '200000000000000',
                );
              },
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(
                Icons.settings,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(
                Icons.logout,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
    // );
  }
}
