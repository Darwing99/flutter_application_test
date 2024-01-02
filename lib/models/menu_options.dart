import 'package:flutter/material.dart';

class MenuOptions {
  final String route;
  final IconData icon;
  final String nameRoute;
  final Widget screen;

  MenuOptions({
      required this.route,
      required this.icon,
      required this.nameRoute,
      required this.screen});
}
