import 'package:flutter/material.dart';

mixin NavigationManager {
  pushPage(BuildContext context, String route, [Object? args]) {
    Navigator.of(context).pushNamed(route, arguments: args);
  }

  pushAndReplacePage(BuildContext context, String route, [Object? args]) {
    Navigator.of(context).pushReplacementNamed(route, arguments: args);
  }
}
