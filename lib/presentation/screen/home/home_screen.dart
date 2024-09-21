import 'package:card_swiper/card_swiper.dart';
import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/data/routes/app_routes.dart';
import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:clinicapp/presentation/core/constants/sizes.dart';
import 'package:clinicapp/presentation/core/constants/urls.dart';
import 'package:clinicapp/presentation/widgets/calendar_widget.dart';
import 'package:clinicapp/presentation/widgets/cilint_list_widget.dart';
import 'package:clinicapp/presentation/widgets/item_news_widget.dart';
import 'package:clinicapp/presentation/widgets/stacked_icons.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const StackedIcons(),
        SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 4, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      ZoomTapAnimation(
                          onTap: () {
                            Navigator.pushNamed(context, RouteName.profile);
                          },
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(Urls.humans2),
                          )),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: ConstSizes.width(66),
                        child: Text(
                          'Kharamov Nuriddin',
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 18,
                            color: ColorConst.textColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.visitListPage,
                          );
                        },
                        icon: Icon(
                          Icons.calendar_month_outlined,
                          size: 34,
                          color: ColorConst.textColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: ConstSizes.width(100),
                  height: ConstSizes.height(26),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25.0, top: 12),
                        child: Text(
                          'Yangiliklar:',
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorConst.textColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        height: ConstSizes.height(27),
                        width: ConstSizes.width(100),
                        padding: const EdgeInsets.only(top: 15),
                        child: Swiper(
                          pagination: const SwiperPagination(),
                          // control: const SwiperControl(),
                          autoplay: true,
                          autoplayDelay: 10000,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return ItemNewsWidget(
                                newsModel: MockData.news[index]);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const CalendarWidget(),
                const ClientListWidget(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
