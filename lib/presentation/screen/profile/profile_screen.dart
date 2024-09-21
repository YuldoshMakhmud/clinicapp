import 'package:clinicapp/data/routes/app_routes.dart';
import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:clinicapp/presentation/core/constants/sizes.dart';
import 'package:clinicapp/presentation/core/constants/urls.dart';
import 'package:clinicapp/presentation/widgets/custom_button.dart';
import 'package:clinicapp/presentation/widgets/stacked_icons.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                padding: EdgeInsets.only(
                  top: ConstSizes.height(4),
                  bottom: ConstSizes.height(2),
                ),
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
                children: [
                  CircleAvatar(
                    radius: 65,
                    backgroundImage: NetworkImage(Urls.humans2),
                  ),
                  // Container(
                  //   width: 110,
                  //   height: 110,
                  //   // margin: const EdgeInsets.only(bottom: 12),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(90),
                  //     image: DecorationImage(
                  //       image: NetworkImage(Urls.humans3),
                  //     ),
                  //     border: Border.all(color: MyColors.containerSubTitleColor)
                  //   ),
                  // ),
                  Text(
                    "Khatamov Nuriddin",
                    style: TextStyle(
                        fontSize: 24,
                        color: ColorConst.textColor,
                        fontWeight: FontWeight.bold,
                        height: 3),
                  ),
                  CustomButtonWidget(
                    text: "Ma'lumotlarni o'zgartirish",
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.profile);
                    },
                    isIcon: true,
                  ),
                  CustomButtonWidget(
                    text: "Tilni o'zgartirish",
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.editLangPage);
                    },
                    isIcon: true,
                  ),
                  CustomButtonWidget(
                    text: "Ommaviy offerta",
                    onTap: () {},
                    isIcon: true,
                  ),
                  CustomButtonWidget(
                    text: "Akkauntdan chiqish",
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        RouteName.phoneAuth,
                        (settings) => false,
                      );
                    },
                    color: ColorConst.textColor,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
