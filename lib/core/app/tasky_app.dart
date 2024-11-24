import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../routing/routes_manager.dart';
import '../theming/colors_manager.dart';

class TaskyApp extends StatelessWidget {
  const TaskyApp({super.key, required this.routesManager});
  final RoutesManager routesManager;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: routesManager.generateRoute,
        initialRoute: Routes.splash,
        title: 'Tasky',
        
        theme: ThemeData(
          primarySwatch: ColorsManager.purple,
          scaffoldBackgroundColor: ColorsManager.white,
        ),
      ),
    );
  }
}
