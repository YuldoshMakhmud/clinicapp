import 'package:clinicapp/presentation/screen/auth/phone_auth_screen.dart';
import 'package:clinicapp/presentation/screen/auth/sms_auth_screen.dart';
import 'package:clinicapp/presentation/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class RouteName {
  static const String phoneAuth = '/phoneauth';
  static const String smsAuth = '/smsauth';
  static const String home = '/home';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.phoneAuth:
        return MaterialPageRoute(builder: (context) => const ClinicAuth());
      case RouteName.smsAuth:
        return MaterialPageRoute(
            builder: (context) => SmsAuthScreen(
                  phoneNumber: settings.arguments as String,
                ));
      case RouteName.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (context) => const ClinicAuth());
    }
  }
}
