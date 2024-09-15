import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:clinicapp/presentation/core/resource/resourse.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.text,
      this.isIcon = false,
      this.padding = 6,
      this.color = ColorConst.secondaryColor,
      required this.onTap});
  final String text;
  final bool isIcon;
  final double padding;
  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: padding),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            child: Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  fontFamily: AppFonts.lexentTera,
                  color: Colors.white,
                  letterSpacing: -1),
            ),
          ),
          if (isIcon)
            const Positioned(
              top: 0,
              bottom: 0,
              right: 30,
              child: Icon(
                Icons.arrow_forward_sharp,
                color: Colors.white,
              ),
            )
        ],
      ),
    );
  }
}
