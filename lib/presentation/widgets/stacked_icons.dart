import 'package:clinicapp/presentation/core/resource/resourse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StackedIcons extends StatelessWidget {
  const StackedIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(
              AssetImages.topBg,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AssetImages.bottomBg,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
