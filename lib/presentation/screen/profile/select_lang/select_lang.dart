import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:clinicapp/presentation/widgets/custom_button.dart';
import 'package:clinicapp/presentation/widgets/stacked_icons.dart';

import 'package:flutter/material.dart';

class EditLangPage extends StatelessWidget {
  const EditLangPage({super.key});

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
              Container(
                height: 280,
                // padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tilni o'zgartirish",
                      style: TextStyle(
                        fontSize: 24,
                        color: ColorConst.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomButtonWidget(
                      text: "O'zbek",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    CustomButtonWidget(
                      text: "Ruscha",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    CustomButtonWidget(
                      text: "Inglizcha",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
