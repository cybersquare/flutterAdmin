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
                color: Color(0xff1E88E5),
              ),
              accountName: Text("Username"),
              accountEmail: Text("xxx@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.green
                        : Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.dashboard),
              onTap: () {
                Navigator.pushNamed(context, RouteConstants.dashboardRoute);
              },
            ),
            ListTile(
              title: Text('Add Product'),
              leading: Icon(
                Icons.shopping_cart,
              ),
              onTap: () {
                Navigator.pushNamed(context, RouteConstants.addProductRoute);
              },
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(
                Icons.settings,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(
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
