import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:shoes_app/constants/string_constants.dart';
import 'package:shoes_app/widget/text/price_text.dart';
import 'package:shoes_app/widget/text/sub_title_text.dart';
import 'package:shoes_app/widget/text/title_text.dart';

class productListView extends StatelessWidget {
  productListView({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
  });

  String image;
  String title;
  String subTitle;
  String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyLeftLow,
      child: Stack(
        children: [
          Container(
            height: 133,
            width: 303,
            decoration: const BoxDecoration(
              color: Color(0xffEFEFEF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(100),
              ),
            ),
          ),
          Positioned(
            left: 65,
            top: -45,
            child: Image.asset(
              image,
              height: 250,
            ),
          ),
          Positioned(
            top: 20,
            left: 30,
            child: Column(
              children: [
                TitleText(text: title),
                SubTitleText(text: subTitle),
                PriceText(text: price),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
