import 'package:clinicapp/data/model/news_model.dart';
import 'package:clinicapp/data/routes/app_routes.dart';
import 'package:clinicapp/presentation/core/constants/colors.dart';
import 'package:clinicapp/presentation/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ItemNewsWidget extends StatelessWidget {
  const ItemNewsWidget({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 30,
          top: 0,
          child: Image(
            image: NetworkImage(newsModel.iconUrl),
            width: 70,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          height: ConstSizes.height(24),
          margin: const EdgeInsets.only(left: 15, right: 15, top: 22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: ColorConst.backgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            child: ZoomTapAnimation(
              onTap: () {
                Navigator.pushNamed(context, RouteName.news,
                    arguments: newsModel);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    newsModel.title,
                    style: TextStyle(
                      fontSize: 16,
                      color: ColorConst.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    newsModel.shortDescription,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorConst.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.news,
                          arguments: newsModel);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "To'liq o'qish",
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorConst.textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_sharp,
                          color: ColorConst.textColor,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
