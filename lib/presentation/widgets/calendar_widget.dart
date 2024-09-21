import 'package:clinicapp/data/routes/app_routes.dart';

import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:clinicapp/presentation/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "Qaysi kunni ko'rmoqchisiz?",
              style: TextStyle(
                fontSize: 16,
                color: ColorConst.textColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ZoomTapAnimation(
            onTap: () {
              Navigator.pushNamed(context, RouteName.selectDay);
            },
            child: Container(
              width: ConstSizes.width(100),
              height: ConstSizes.height(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: ColorConst.backgroundColor),
            ),
          ),
        ],
      ),
    );
  }
}
