import 'package:clinicapp/data/routes/app_routes.dart';
import 'package:clinicapp/presentation/core/resource/resourse.dart';
import 'package:clinicapp/presentation/widgets/custom_button.dart';
import 'package:clinicapp/presentation/widgets/custom_text_form_feild_widget.dart';
import 'package:clinicapp/presentation/widgets/stacked_icons.dart';
import 'package:flutter/material.dart';

class ClinicAuth extends StatefulWidget {
  const ClinicAuth({super.key});

  @override
  State<ClinicAuth> createState() => _ClinicAuthState();
}

class _ClinicAuthState extends State<ClinicAuth> {
  TextEditingController phoneNumberContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const StackedIcons(),
        SafeArea(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(child: Image(image: AssetImage(AssetImages.logo))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("Ro’yhatdan o’tish",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                ),
                CustomTextFormFeildWidget(
                  topText: "Phone NUmber :",
                  hintText: "Phone Number",
                  controller: phoneNumberContoller,
                  keyboardType: TextInputType.phone,
                ),
                const Spacer(),
                CustomButtonWidget(
                  text: "SMS yuborish",
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.smsAuth,
                        arguments: phoneNumberContoller.text);
                  },
                  isIcon: false,
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
