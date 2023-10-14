

import 'package:arsi/core/route/app_route.dart';
import 'package:arsi/core/route/app_route_name.dart';


import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Arsii app",
      theme: AppTheme.light,
      themeMode: ThemeMode.light,
     initialRoute: AppRouteName.getStarted,
    onGenerateRoute: AppRoute.generate,
   
      //home: const ResponsiveLayout(
       // mobileScreenLayout: MobileLayoutScreen(),
        //webScreenLayout: WebLayoutScreen(),
      //)
    );
  }
}


