import 'package:clinicapp/data/mock/mock_data.dart';

import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:clinicapp/presentation/core/constants/sizes.dart';
import 'package:clinicapp/presentation/widgets/item_cilint_view.dart';

import 'package:flutter/material.dart';

class ClientListWidget extends StatelessWidget {
  const ClientListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "Mijozlar:",
              style: TextStyle(
                fontSize: 16,
                color: ColorConst.textColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            width: ConstSizes.width(100),
            height: ConstSizes.height(22),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: ColorConst.backgroundColor,
            ),
            child: ListView.builder(
              itemCount: MockData.users.length,
              // prototypeItem: const ListTile(),
              itemBuilder: (context, index) {
                return ItemClientListView(userModel: MockData.users[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
