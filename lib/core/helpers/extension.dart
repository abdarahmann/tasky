import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) => Navigator.of(this).pushNamed(
       routeName,arguments: arguments); 
  Future<dynamic> pushReplacementNamed(String routeName) =>
      Navigator.of(this).pushReplacementNamed(routeName);
  Future<dynamic> pushNamedAndRemoveUntil(String routeName) =>
      Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);
  void pop() => Navigator.of(this).pop();
}
