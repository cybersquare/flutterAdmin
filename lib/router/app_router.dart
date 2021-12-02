import 'package:cs_ecomm/add_products/view/addproducts.dart';
import 'package:cs_ecomm/all_products/view/all_products.dart';
import 'package:cs_ecomm/dashboard/view/dashboard_page.dart';
import 'package:cs_ecomm/login/login.dart';
import 'package:cs_ecomm/orders/view/totalorders.dart';
import 'package:cs_ecomm/router/route_constants.dart';
import 'package:cs_ecomm/user/view/user.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routesettings) {
    switch (routesettings.name) {
      case RouteConstants.loginRoute:
        return MaterialPageRoute<MaterialPageRoute>(builder: (_) => Login());
      case RouteConstants.dashboardRoute:
        return MaterialPageRoute<MaterialPageRoute>(
          builder: (_) => const Dashboard(),
        );
      case RouteConstants.totalUserRoute:
        return MaterialPageRoute<MaterialPageRoute>(
          builder: (_) => TotalUser(),
        );
      case RouteConstants.totalProductRoute:
        return MaterialPageRoute<MaterialPageRoute>(

          builder: (_) => AllProducts(),

        );
      case RouteConstants.addProductRoute:
        return MaterialPageRoute<MaterialPageRoute>(
          builder: (_) => AddProduct(),
        );
      case RouteConstants.totalorderRoute:
        return MaterialPageRoute<MaterialPageRoute>(
          builder: (_) => TotalOrder(),
        );
      default:
        return MaterialPageRoute<MaterialPageRoute>(
          builder: (_) => const Dashboard(),
        );
    }
  }
}
