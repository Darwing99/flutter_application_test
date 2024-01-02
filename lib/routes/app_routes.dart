import 'package:flutter/material.dart';
import 'package:flutter_application_test/models/menu_options.dart';
import 'package:flutter_application_test/screens/login_Screen.dart';

class AppRoutes {
  // ignore: constant_identifier_names
  static const InitialRoute = "home_screen";
  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'login_screen',
        icon: Icons.home_filled,
        nameRoute: 'login_screen',
        screen: const LoginScreen()),  
  ];

  static Map<String, WidgetBuilder> getAppRoutes() {
    Map<String, WidgetBuilder> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes
          .addAll({option.nameRoute: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const LoginScreen());
  }
}
