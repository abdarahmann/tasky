import 'package:flutter/material.dart';

import 'core/app/tasky_app.dart';
import 'core/routing/routes_manager.dart';

void main() {
  runApp( TaskyApp(routesManager: RoutesManager(),));
}


