import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News(
      {super.key,
      this.topText = "Yangiliklar:",
      this.color = const Color.fromRGBO(0, 126, 133, 0.35),
      this.padding = 6});

  final String topText;
  final Color color;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            topText,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 160),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: padding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Text('dfg'),
        ),
      ],
    );
  }
}
