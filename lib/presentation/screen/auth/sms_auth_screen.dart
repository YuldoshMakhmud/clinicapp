import 'package:clinicapp/data/service/mock_service.dart';
import 'package:clinicapp/presentation/core/resource/resourse.dart';
import 'package:clinicapp/presentation/widgets/custom_button.dart';
import 'package:clinicapp/presentation/widgets/custom_text_form_feild_widget.dart';
import 'package:clinicapp/presentation/widgets/stacked_icons.dart';
import 'package:flutter/material.dart';

class SmsAuthScreen extends StatefulWidget {
  const SmsAuthScreen({super.key, required this.phoneNumber});

  final String phoneNumber;
  @override
  State<SmsAuthScreen> createState() => _SmsAuthScreenState();
}

class _SmsAuthScreenState extends State<SmsAuthScreen> {
  TextEditingController smsContoller = TextEditingController();
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
                const Center(
                    child: const Image(image: AssetImage(AssetImages.logo))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("Tasdiqlash",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                ),
                CustomTextFormFeildWidget(
                  topText: "SMS kod :",
                  hintText: "SMS kodni kiriting",
                  controller: smsContoller,
                  keyboardType: TextInputType.number,
                ),
                const Spacer(),
                CustomButtonWidget(
                  text: "Tasdiqlash",
                  onTap: () {
                    MockService.checkSMSCode(
                        phoneNumber: widget.phoneNumber,
                        smsCode: smsContoller.text);
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
