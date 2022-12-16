import 'package:flutter/material.dart';
import 'package:seneca/Screens/screens.dart';
import 'package:seneca/models/menu_options.dart';

class AppRoutes {
  static const initialRoute = "login";
  final String user;

  AppRoutes(this.user);

  static final menuOptions = <MenuOption> [
    //MenuOption(route: "home", icon: Icons.home , name: "Home Screen", screen: const HomeScreen()),
    //MenuOption(route: "second", name: "Second Screen", screen: const SecondScreen(user: user)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    
    appRoutes.addAll(
      {
        "login" : (BuildContext context) { return const LoginScreen();}
      }
    );

    for (var option in menuOptions) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
}