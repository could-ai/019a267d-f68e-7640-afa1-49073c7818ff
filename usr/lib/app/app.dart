import 'package:flutter/material.dart';
import 'package:couldai_user_app/app/routes/app_pages.dart';
import 'package:couldai_user_app/app/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppPages.INITIAL,
      routes: AppPages.routes,
    );
  }
}
