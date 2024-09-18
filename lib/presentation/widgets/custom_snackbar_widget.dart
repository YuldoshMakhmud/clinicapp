import 'package:clinicapp/data/routes/navigation_service.dart';
import 'package:flutter/material.dart';

class CustomSnackbarWidget {
  static meesenger(String text, Color color) => ScaffoldMessenger.of(
              NavigationService.instance.navigatorKey.currentState!.context)
          .showSnackBar(SnackBar(
        content: Text(text),
        backgroundColor: color,
      ));
}
