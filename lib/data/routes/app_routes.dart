import 'package:clinicapp/presentation/screen/auth/phone_auth_screen.dart';
import 'package:clinicapp/presentation/screen/auth/sms_auth_screen.dart';
import 'package:clinicapp/presentation/screen/home/home_screen.dart';
import 'package:clinicapp/presentation/screen/home/news_deatils_page/news_screen.dart';
import 'package:clinicapp/presentation/screen/home/select_date_page/select_day.dart';
import 'package:clinicapp/presentation/screen/home/visit_list.dart';
import 'package:clinicapp/presentation/screen/profile/profile_screen.dart';
import 'package:clinicapp/presentation/screen/profile/select_lang/select_lang.dart';
import 'package:clinicapp/presentation/widgets/cilint_list_widget.dart';
import 'package:flutter/material.dart';

class RouteName {
  static const String phoneAuth = '/phoneauth';
  static const String smsAuth = '/smsauth';
  static const String home = '/home';
  static const String selectDay = '/selectday';
  static const String news = '/news';
  static const String profile = '/profile';
  static const String editLangPage = '/editlangpage';
  static const String visitListPage = '/visitlistpage';
  static const String cilintListWidget = '/cilintListWidget';
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
      case RouteName.selectDay:
        return MaterialPageRoute(builder: (context) => const SelectDay());
      case RouteName.news:
        return MaterialPageRoute(builder: (context) => const NewsPage());
      case RouteName.profile:
        return MaterialPageRoute(builder: (context) => const ProfilePage());
      case RouteName.editLangPage:
        return MaterialPageRoute(builder: (context) => const EditLangPage());
      case RouteName.visitListPage:
        return MaterialPageRoute(builder: (context) => const VisitListPage());
      case RouteName.cilintListWidget:
        return MaterialPageRoute(
            builder: (context) => const ClientListWidget());
      default:
        return MaterialPageRoute(builder: (context) => const ClinicAuth());
    }
  }
}
