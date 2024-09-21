import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:clinicapp/presentation/widgets/custom_button.dart';
import 'package:clinicapp/presentation/widgets/custom_text_form_feild_widget.dart';

import 'package:clinicapp/presentation/widgets/stacked_icons.dart';

import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
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
                height: 450,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ma'lumotlarni o'zgartirish",
                      style: TextStyle(
                        fontSize: 24,
                        color: ColorConst.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomTextFormFeildWidget(
                      topText: "",
                      hintText: "Ism",
                      controller: textEditingController,
                    ),
                    CustomTextFormFeildWidget(
                      topText: '',
                      hintText: "Familiya",
                      controller: textEditingController,
                    ),
                    CustomButtonWidget(
                      text: "Rasm",
                      onTap: () {
                        // Navigator.pop(context);
                      },
                    ),
                    CustomTextFormFeildWidget(
                      topText: '',
                      hintText: "Telefon raqam",
                      controller: textEditingController,
                    ),
                    CustomButtonWidget(
                      text: "Tasdiqlash",
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
