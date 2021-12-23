// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:cs_ecomm/add_products/addproduct.dart';
import 'package:cs_ecomm/l10n/l10n.dart';
import 'package:cs_ecomm/router/app_router.dart';
import 'package:cs_ecomm/viewProduct/view_product.dart';

import 'package:cs_ecomm/update_product/update_product.dart';

import 'package:cs_ecomm/splash/view/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 360),
      builder: () => MaterialApp(
        // Firebase.initializeApp()
        onGenerateRoute: AppRouter().onGenerateRoute,
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.blueGrey[800]),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
        ),

      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: Splash(),

    );
  }
}
