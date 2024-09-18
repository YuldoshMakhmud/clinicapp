import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/data/model/user_modl.dart';
import 'package:clinicapp/data/routes/app_routes.dart';
import 'package:clinicapp/data/routes/navigation_service.dart';
import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:clinicapp/presentation/widgets/custom_snackbar_widget.dart';
import 'package:flutter/material.dart';

class MockService {
  static void checkSMSCode(
      {required String phoneNumber, required String smsCode}) {
    for (UserModel element in MockData.users) {
      if (element.phoneNumber == phoneNumber) {
        if (element.smsCode == smsCode) {
          CustomSnackbarWidget.meesenger(
              "Muvaffaqiyatli ro'yhatdan o'tdingiz", ColorConst.secondaryColor);
          NavigationService.instance
              .navigateMyScreenAndRemoveUntil(routeName: RouteName.home);
        } else {
          CustomSnackbarWidget.meesenger("SMS kod noto'g'ri", Colors.red);
        }
      }
    }
  }
}
