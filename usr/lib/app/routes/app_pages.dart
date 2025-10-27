import 'package:couldai_user_app/app/modules/auth/login/login_binding.dart';
import 'package:couldai_user_app/app/modules/auth/login/login_screen.dart';
import 'package:couldai_user_app/app/modules/splash/splash_binding.dart';
import 'package:couldai_user_app/app/modules/splash/splash_screen.dart';
import 'package:couldai_user_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AppPages {
  static const INITIAL = AppRoutes.SPLASH;

  static final routes = {
    AppRoutes.SPLASH: (BuildContext context) {
      SplashBinding().dependencies();
      return SplashScreen();
    },
    AppRoutes.LOGIN: (BuildContext context) {
      LoginBinding().dependencies();
      return LoginScreen();
    },
  };
}
