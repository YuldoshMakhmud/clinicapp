import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:clinicapp/presentation/core/constants/sizes.dart';
import 'package:clinicapp/presentation/widgets/custom_button.dart';
import 'package:clinicapp/presentation/widgets/stacked_icons.dart';
import 'package:flutter/material.dart';

class VisitListPage extends StatelessWidget {
  const VisitListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const StackedIcons(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    size: 40,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: ConstSizes.width(5),
                        bottom: ConstSizes.height(1)),
                    child: Text(
                      "Tashriflar ro'yhati",
                      style: TextStyle(
                        fontSize: 24,
                        color: ColorConst.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CustomButtonWidget(text: "Ketdi", onTap: () {}),
                  CustomButtonWidget(text: "Keldi", onTap: () {}),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
