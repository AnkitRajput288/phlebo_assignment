import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';


class NavigatorUtils {
  static void pop(BuildContext context) {
    Navigator.pop(
      context,
    );
  }

  /*static void moveToDashboardUI(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Dashboard()),
    );
  }*/

  ///Common method
  static void moveTo(String path, {Object? data}) {
    _pushNamed(path, data: data);
  }

  static void _pushNamed(String path, {Object? data}) {
    Modular.to.pushNamed(path, arguments: data);
  }
}
