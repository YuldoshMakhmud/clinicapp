import 'package:clinicapp/data/model/user_modl.dart';
import 'package:clinicapp/data/routes/app_routes.dart';

import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ItemClientListView extends StatelessWidget {
  const ItemClientListView({
    super.key,
    required this.userModel,
  });
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        Navigator.pushNamed(
          context,
          RouteName.cilintListWidget,
          arguments: userModel,
        );
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                userModel.name,
                style: TextStyle(
                  fontSize: 14,
                  color: ColorConst.textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                userModel.surname,
                style: TextStyle(
                  fontSize: 14,
                  color: ColorConst.textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              Text(
                userModel.name,
                style: TextStyle(
                  fontSize: 16,
                  color: ColorConst.textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(255, 255, 255, 0.5),
                ),
                child: Icon(
                  Icons.visibility_outlined,
                  size: 18,
                  color: ColorConst.textColor,
                ),
              ),
            ],
          ),
          const Divider(color: Color.fromRGBO(0, 126, 133, 0.2)),
        ],
      ),
    );
  }
}
