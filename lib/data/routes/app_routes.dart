import 'package:clinicapp/presentation/screen/auth/phone_auth_screen.dart';
import 'package:flutter/material.dart';

class RouteName {
  static const String phoneAuth = '/phoneauth';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.phoneAuth:
        return MaterialPageRoute(builder: (context) => const ClinicAuth());
      default:
        return MaterialPageRoute(builder: (context) => const ClinicAuth());
    }
  }
}
