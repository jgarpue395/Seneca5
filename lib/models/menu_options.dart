import 'package:flutter/cupertino.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData? icon;
  final String name;
  final Widget screen;

  MenuOption({
    required this.route, 
    this.icon, 
    required this.name, 
    required this.screen,
  });
}